    #!/bin/sh

    # Основная команда для запуска
    CMD="/simple-proxy/simple-proxy"

    # Добавляем параметры из OPT, если переменная установлена
    CMD="$CMD $OPT"

    echo run: $CMD

    exec $CMD