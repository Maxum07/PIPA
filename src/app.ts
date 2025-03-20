import express, { Application } from "express";
import env from "#config/index";

import loader from "./loaders";
import { logger } from "#utils/Logger";

const app = express();

const ExecuteServer = (app: Application, port?: number) => {
    app.listen(port, () => logger.info(`Server running on port ${port}`));
};

const StartServer = () => {
    (async (app: Application) => {
        await loader(app);
        
        
            ExecuteServer(app, 3001);
        
    })(app);
};

StartServer();
