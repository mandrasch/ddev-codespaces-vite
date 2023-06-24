// Last step is to set 5173 to PUBLIC + HTTPS in the codespace, else you will get a CORS error. 
// Unfortunately you cannot specify this in the .devcontainer

export default ({ command }) => ({
    // 'vite' is always command = 'serve', other command is 'build'
    base: command === 'serve' ? '' : '/dist/',
    build: {
        manifest: true,
        // outDir: '../cms/web/dist/',
        rollupOptions: {
            input: {
                app: './src/js/app.js',
            }
        },
    },
    // for ddev:
    server: {
        host: '0.0.0.0', // react to all incoming traffic
        port: 5173,
    }
});