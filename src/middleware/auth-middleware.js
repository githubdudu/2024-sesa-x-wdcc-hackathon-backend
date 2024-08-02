import { getUserWithUsername } from "../data/user-dao/index.js";
import { getUsernameFromJWT } from "../utils/jwt-utils.js";

/**
 * Create a middleware which will get the auth JWT from req.cookies.authToken, verify it, find the matching user, and add it to req.user.
 *
 * If any of those processes fail, a 401 status will be returned. Otherwise, the next() function will be called to continue executing
 * your route handlers.
 */
export function requiresAuthentication(req, res, next) {
  // TODO Complete this function
  if (!req.cookies.authToken) {
    res.sendStatus(401);
    return;
  }
  try {
    const username = getUsernameFromJWT(req.cookies.authToken);
    const user = getUserWithUsername(username);
    req.user = user;
    next();
  } catch (e) {
    res.sendStatus(401);
    return;
  }
}
