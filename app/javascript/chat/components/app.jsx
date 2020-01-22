import React from 'react';
import ChannelList from '../containers/channel_list';
import MessageList from '../containers/message_list';


class App extends React.Component {
  render() {
    return (
      <div className="messaging-wrapper">
        <div className="logo-container">
          <i className="fas fa-comment-dots"></i>
        </div>
        <ChannelList selectedChannel={this.props.match.params.channel} />
        <MessageList selectedChannel={this.props.match.params.channel} />
      </div>
    );
  }
}

export default App;
