import app from "./app.js";

const main = () => {
    app.listen(app.get('port'), app.get('host'), () => {
        console.log(`\nThe server is running on http://${app.get('host')}:${app.get('port')}`);
    });
}

(() => {
    main();
})();