FROM wceolin/firebase-emulator

LABEL version="1.0.0"
LABEL repository="https://github.com/IIIMPACT/firebase-firestore-testing-action.git"
LABEL homepage="https://github.com/IIIMPACT/firebase-firestore-testing-action.git"
LABEL maintainer="Bhekani Khumalo <bhekani@iiimpact.io>"

LABEL com.github.actions.name="irebase Firestore Testing"
LABEL com.github.actions.description="Test firestore with the emulators."

RUN npm ci
RUN firebase serve --only firestore
RUN npm run test

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]