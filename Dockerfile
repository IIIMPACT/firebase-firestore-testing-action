FROM bhekanik/firebase:latest

LABEL version="1.0.0"
LABEL repository="https://github.com/IIIMPACT/firebase-firestore-testing-action.git"
LABEL homepage="https://github.com/IIIMPACT/firebase-firestore-testing-action.git"
LABEL maintainer="Bhekani Khumalo <bhekani@iiimpact.io>"

LABEL com.github.actions.name="Firebase Firestore Testing"
LABEL com.github.actions.description="Test firestore with the emulators and jest."
LABEL com.github.actions.icon="airplay"
LABEL com.github.actions.color="orange"

RUN npm i -g yarn

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]