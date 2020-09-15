'use strict';

const e = React.createElement;

class DevelopmentForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { submit: false };
  }

  render() {
    if (this.state.submit) {
      return <h2>Your Development has been submitted. {+ this.props.commentID}</h2>;
    }

    return e(
      <button onClick={() => this.setState({ submit: true })}>
      Submit
    </button>
    );
  }
}

// Find all DOM containers, and render Like buttons into them.
document.querySelectorAll('.development-form')
  .forEach(domContainer => {
    // Read the comment ID from a data-* attribute.
    const commentID = parseInt(domContainer.dataset.commentid, 10);
    ReactDOM.render(
      e(DevelopmentForm, { commentID: commentID }),
      domContainer
    );
  });
