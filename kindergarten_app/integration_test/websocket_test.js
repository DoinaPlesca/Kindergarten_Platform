import { check, sleep } from 'k6';
import ws from 'k6/ws';
import { Counter } from 'k6/metrics';

///k6 run integration_test/websocket_test.js

export let errorCount = new Counter('errors');

export default function () {
    const url = 'ws://0.0.0.0:8181';
    const params = { tags: { my_tag: 'hello' } };

    const res = ws.connect(url, params, function (socket) {
        socket.on('open', function () {
            console.log('Connected');
            socket.send(JSON.stringify({ message: 'Hello from client' }));

            socket.setInterval(function () {
                socket.send(JSON.stringify({ message: 'Ping' }));
            }, 100);
        });

        socket.on('message', function (message) {
            console.log(`Received message: ${message}`);
        });

        socket.on('close', function () {
            console.log('Disconnected');
        });

        socket.on('error', function (e) {
            console.log(`Error: ${e.error()}`);
            errorCount.add(1);
        });

        socket.setTimeout(function () {
            socket.close();
            console.log('Closed by timeout');
        }, 10000);
    });

    check(res, { 'Connected successfully': (r) => r && r.status === 101 });
    sleep(1);
}
