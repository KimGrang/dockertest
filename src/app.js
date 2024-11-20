import express from "express";
import router from "./routes/index.js";
import LogMiddleware from "./middlewares/log.middleware.js";
import ErrorHandlingMiddleware from "./middlewares/error-handling.middleware.js";
import cors from "cors";

const corsOptions = {
  origin: "*", // 모든 출처 허용 (개발 환경용)
  methods: ["GET", "POST", "PUT"],
  allowedHeaders: ["Content-Type", "Authorization"],
  exposedHeaders: ["Content-Range", "X-Content-Range"],
  credentials: true,
  maxAge: 3600,
};

const app = express();
const port = 4000;

app.use(cors(corsOptions));
app.use(LogMiddleware);
app.use(express.json());
app.use("/api", router);
app.use(ErrorHandlingMiddleware);

app.listen(port, () => {
  console.log(port, "포트로 서버가 열렸어요!");
});
