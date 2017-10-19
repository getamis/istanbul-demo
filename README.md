## Istanbul Demo on Quorum

### Normal case
We run 4 nodes and can check network status on Ethstats. The link of Ethstats is `http://${docker_machine_ip}:3000`.

```
$ docker-compose --file docker-compose.yaml up -d
```

Stop docker compose.

```
$ docker-compose --file docker-compose.yaml down
```

### Byzantine faulty case
We run 3 nodes and 1 faulty node and can check network status on Ethstats. The link of Ethstats is `http://${docker_machine_ip}:3000`.

```
$ docker-compose --file docker-compose-faulty.yaml up -d
```

Stop docker compose.

```
$ docker-compose --file docker-compose-faulty.yaml down
```
