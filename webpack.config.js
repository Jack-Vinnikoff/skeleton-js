const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
    mode: 'development',
    entry: './src/index.js',
    output: {
        filename: 'bundle.js',
        path: path.resolve(__dirname, './server/assets/'),
    },
    devServer: {
        hot: true,
        port: 3000,
        allowedHosts: 'all',
        headers: {
            'Access-Control-Allow-Origin': '*'
        },
    },
    module: {
        rules: [
            {
                test: /\.css$/,
                use: [
                    { loader: 'style-loader' },
                    {
                        loader: 'css-loader',
                    },
                ]
            },
        ]
    },
    plugins: [new HtmlWebpackPlugin({
        title: "Hacker hyper",
        template: "/src/template/index.html",
    })],
};