import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  // the if below prevents the js code loading at every other page. remember ther mapbox problem.
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
        messagesContainer.insertAdjacentHTML('beforeend', data);
        const input = document.getElementById('message_content');
        input.value = '';
        const last = messagesContainer.lastElementChild;
       messagesContainer.scrollTo({top: last.offsetTop, left: last.offsetLeft, behavior: 'smooth'});
      },
    });
  }
}

export { initChatroomCable };
