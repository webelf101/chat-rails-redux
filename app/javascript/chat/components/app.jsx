import React from 'react';
import ChannelList from '../containers/channel_list';
import MessageList from '../containers/message_list';


class App extends React.Component {
  render() {
    return (
      <div className="messaging-wrapper">
        <div className="logo-container">
          <img className="messaging-logo" src="" alt="logo" />
        </div>
        <ChannelList selectedChannel={this.props.match.params.channel} />
        <MessageList selectedChannel={this.props.match.params.channel} />
      </div>
    );
  }
}

export default App;
