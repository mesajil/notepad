## Commands for linux

### Schedule an automatic shutdown (7200 = seconds / 2 hours)

```bash
shutdown -s -t 7200
```

### Cancel Auto Shutdown Schedule

```bash
shutdown -a
```

## Apagar en una hora específica

Sí, puedes programar un apagado a una hora específica usando el comando `at` en Windows. Aquí te muestro cómo hacerlo:

1. Abre el símbolo del sistema (cmd) como administrador.
2. Usa el siguiente comando para programar el apagado a una hora específica:

```bash
at 20:20 shutdown -s
```

Esto programará un apagado para las 8:20 PM. Ten en cuenta que este comando puede requerir que el servicio "Task Scheduler" esté habilitado y en ejecución en tu sistema.

Otra forma más moderna de hacer esto en PowerShell es utilizando el `schtasks` comando para crear una tarea programada:

1. Abre PowerShell como administrador.
2. Usa el siguiente comando para programar el apagado a una hora específica (por ejemplo, 8:20 PM):

```powershell
schtasks /create /tn "Shutdown" /tr "shutdown -s -f" /sc once /st 20:20
```

Este comando crea una tarea programada llamada "Shutdown" que ejecutará el comando de apagado a las 8:20 PM.

Para eliminar la tarea programada después de que ya no la necesites, puedes usar:

```powershell
schtasks /delete /tn "Shutdown" /f
```

Esto eliminará la tarea programada llamada "Shutdown".
