import express from 'express';
import 'dotenv/config';

const app = express();
app.set('port', process.env.PORT_SERVER || 3000);
app.set('host', process.env.HOST_SERVER || 'localhost')

app.listen(app.get('port'), app.get('host'), () => {
    console.log(`\nThe server is running on http://${app.get('host')}:${app.get('port')}`);
});