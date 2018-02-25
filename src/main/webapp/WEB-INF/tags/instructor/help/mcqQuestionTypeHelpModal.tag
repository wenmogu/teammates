<%@ tag description="instructorFeedbackEdit - Question Type Help Modal For MCQ" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/instructor/help" prefix="instructorHelp" %>

<div class="modal fade question-type-help-modal" id="questionTypeHelpModal_mcq" tabindex="-1" role="dialog"
     aria-labelledby="mcqQuestionHelpModalTitle" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">
          <span aria-hidden="true">&times;</span>
          <span class="sr-only">Close</span>
        </button>
        <h4 class="modal-title" id="fbMcq">
          Multiple-choice (single answer) question

          <a href="javascript:;"
             data-modal-link = "questionTypeHelpModal_roadmap"
             class="button_questionTypeHelpModal question-type-help-modal-glyphicon"
             data-toggle="tooltip" data-placement="top"
             title="Click to go back to Available Question Types">
            <i class="glyphicon glyphicon-circle-arrow-left"></i>
          </a>
        </h4>
      </div>
      <div class="modal-body question-type-help-modal-body" id="questionTypeHelpModalBody_mcq">
        <instructorHelp:mcqQuestionTypeHelpBody />
      </div>
    </div>
  </div>
</div>

