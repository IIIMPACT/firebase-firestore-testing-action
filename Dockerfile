FROM bhekanik/firebase:latest

LABEL version="3.0.0"
LABEL repository="https://github.com/IIIMPACT/firebase-firestore-testing-action.git"
LABEL homepage="https://github.com/IIIMPACT/firebase-firestore-testing-action.git"
LABEL maintainer="Bhekani Khumalo <bhekani@gmail.com>"

LABEL com.github.actions.name="Jest testing (including firestore rules)"
LABEL com.github.actions.description="Run jest to test code, this includes the firebase firestore emulator to make it possible to also test firestore rules."
LABEL com.github.actions.icon="airplay"
LABEL com.github.actions.color="orange"

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]