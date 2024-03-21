# role: irc
class role::kafka {
    # We need zookeeper also
    class { 'zookeeper': }

    class { 'kafka':
        kafka_version => '2.4.1',
        scala_version => '2.12',
    }

    system::role { 'kafka':
        description => 'Kafka server',
    }
}
