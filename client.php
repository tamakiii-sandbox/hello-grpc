<?php
# client.php

require_once 'vendor/autoload.php';

use Acme\Protobuf\ExampleClient;
use Acme\Protobuf\EchoRequest;
use Acme\Protobuf\EchoResponse;

function request(string $requestMessage)
{
    $client = new ExampleClient('grpc_go:50051', [
        'credentials' => Grpc\ChannelCredentials::createInsecure(),
    ]);
    $request = new EchoRequest();
    $request->setMessage($requestMessage);

    list($reply, $status) = $client->Echo($request)->wait();

    /** @var EchoResponse $reply */
    return $reply->getMessage();
}

echo request('World.')."\n";
