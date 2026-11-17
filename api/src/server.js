import app from './app.js';
import {env} from './config/env.js';

const PORT = env.port;

app.listen(PORT, () => {
  console.log(`CampusCLoud API ejecutandose en http://localhost:${PORT}`);
});


