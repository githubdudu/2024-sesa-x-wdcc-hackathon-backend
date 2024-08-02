import express from "express";
const router = express.Router();

// import child routes
import tempRoutes from "./api-temp.js"; // TODO delete it later
router.use("/messages", tempRoutes); // TODO delete it later

export default router;
