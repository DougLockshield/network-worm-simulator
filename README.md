# 🪱 Network Worm Simulator - Educational PoC

Este projeto demonstra, de forma **educativa e controlada**, como um worm pode se propagar automaticamente em uma rede local, utilizando apenas um arquivo `.bat`, autenticação SMB e execução remota com `PsExec`.

> ⚠️ **ATENÇÃO:** Este projeto é apenas para fins educacionais. Não utilize esse código fora de ambientes de laboratório controlados. Nenhuma funcionalidade deste repositório deve ser aplicada em ambientes reais sem permissão explícita.

---

## 🧠 O que o worm faz

- Pode escanear IPs da rede local
- Conecta-se via SMB usando usuário e senha pré-definidos
- Copia o arquivo `payload.bat` para o destino
- Executa remotamente o payload usando `PsExec`
- O payload simula uma infecção abrindo a calculadora e criando um arquivo `.txt`

---

## 🗂️ Arquivos

- `worm.bat` – Script principal de propagação
- `payload.bat` – Simula o impacto do malware (exemplo: abrir a calculadora)
- `run_silent.vbs` – Opcional, para executar o payload local de forma oculta
- `psexec.exe` – Placeholder do PsExec (substitua pela versão oficial da Sysinternals)

---

## 🚀 Como usar

1. Altere o usuário e senha no topo do arquivo `worm.bat`:
    ```bat
    set USER=
    set PASS=
    ```

2. Certifique-se de que:
    - As máquinas alvo estão na mesma rede
    - O usuário configurado tem permissão de administrador nas máquinas

3. Execute o `worm.bat` como administrador na máquina inicial

---

## ≈ Importante

Este projeto é uma **PoC (prova de conceito)** para fins de aprendizado em segurança da informação demonstrada no vídeo: https://www.youtube.com/watch?v=goxDkvmmxJQ
Nenhuma funcionalidade é destrutiva ou maliciosa — o objetivo é mostrar **como a propagação automática funciona**.

---
