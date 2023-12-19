import express from 'express';
import 'dotenv/config';
import routesV1 from './routes/v1/index.js';
import routesV2 from './routes/v2/index.js';

const app = express();
app.set('port', process.env.PORT_SERVER || 3000);
app.set('host', process.env.HOST_SERVER || 'localhost')

app.use(express.json());

app
    .use('/api/v1', routesV1)

    .use('/api/v2', routesV2)

export default app;