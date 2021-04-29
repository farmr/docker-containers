FROM farmrone/plutus-base:latest

RUN nix-shell --run "cd plutus-playground-client && npm install && plutus-playground-generate-purs && npm run purs:compile && npm run webpack"

EXPOSE 8080
EXPOSE 8009

ENTRYPOINT [ "entrypoint.sh" ]
