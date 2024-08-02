/**
 * This file contains API routes for the temp data.
 * TODO: Delete this file when you are ready to connect to a real database.
 */

import express from "express";
import { getMessages } from "../../data/temp-dao.js";

const router = express.Router();

router.get("/", async (req, res) => {
  const messages = await getMessages();
  return res.json(messages);
});

export default router;
