FROM wceolin/firebase-emulator

LABEL version="1.0.0"
LABEL repository="https://github.com/IIIMPACT/firebase-firestore-testing-action.git"
LABEL homepage="https://github.com/IIIMPACT/firebase-firestore-testing-action.git"
LABEL maintainer="Bhekani Khumalo <bhekani@iiimpact.io>"

LABEL com.github.actions.name="irebase Firestore Testing"
LABEL com.github.actions.description="Test firestore with the emulators."
LABEL com.github.actions.icon="airplay"
LABEL com.github.actions.color="orange"

COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]