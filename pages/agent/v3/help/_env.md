<!--
  _____   ____    _   _  ____ _______   ______ _____ _____ _______ 
 |  __ \ / __ \  | \ | |/ __ \__   __| |  ____|  __ \_   _|__   __|
 | |  | | |  | | |  \| | |  | | | |    | |__  | |  | || |    | |   
 | |  | | |  | | | . ` | |  | | | |    |  __| | |  | || |    | |   
 | |__| | |__| | | |\  | |__| | | |    | |____| |__| || |_   | |   
 |_____/ \____/  |_| \_|\____/  |_|    |______|_____/_____|  |_|   

This file is auto-generated by script/update-agent-help.sh, please update the
agent CLI help in https://github.com/buildkite/agent and run the generation
script.

-->

## Usage

`buildkite-agent env [options]`

## Description
Prints out the environment of the current process as a JSON object, easily parsable by other programs. Used when
executing hooks to discover changes that hooks make to the environment.

## Example
    $ buildkite-agent env

Prints the environment passed into the process


## Options

<!-- vale off -->

<table class="Docs__attribute__table">
<tr id="pretty"><th><code>--pretty </code> <a class="Docs__attribute__link" href="#pretty">#</a></th><td><p>Pretty print the JSON output<br /><strong>Environment variable</strong>: <code>$BUILDKITE_AGENT_ENV_PRETTY</code></p></td></tr>
</table>

<!-- vale on -->
