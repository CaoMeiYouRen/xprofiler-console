// xprofiler-console/config/config.local.js
'use strict';
const env = process.env
module.exports = () => {
    const config = {};

    config.mysql = {
        app: true,
        agent: false,
        clients: {
            xprofiler_console: {
                host: env.MYSQL_HOST || '127.0.0.1',
                port: parseInt(env.MYSQL_PORT || 3306),
                user: env.MYSQL_USER || 'root',
                password: env.MYSQL_PASSWORD || '123456',
                database: env.MYSQL_XPROFILER_CONSOLE || 'xprofiler_console',
            },
            xprofiler_logs: {
                host: env.MYSQL_HOST || '127.0.0.1',
                port: parseInt(env.MYSQL_PORT || 3306),
                user: env.MYSQL_USER || 'root',
                password: env.MYSQL_PASSWORD || '123456',
                database: env.MYSQL_XPROFILER_LOGS || 'xprofiler_logs',
            },
        },
    };

    config.redis = {
        client: {
            sentinels: null,
            port: parseInt(env.REDIS_PORT || 6379),
            host: env.REDIS_HOST || '127.0.0.1',
            password: env.REDIS_PASSWORD || '',
            db: 0,
        },
    };

    config.xprofilerConsole = env.XPROFILER_CONSOLE || 'http://127.0.0.1:8443';

    config.xtransitManager = env.XTRANSIT_MANAGER || 'http://127.0.0.1:8543';

    return config;
};