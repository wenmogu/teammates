<%@ page pageEncoding="UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags/instructor/help" prefix="instructorHelp" %>

<h4 class="text-color-primary" id="sessionTypes">Sessions</h4>
<div id="contentHolder">
  <br>
  <ol style="list-style-type: none;">
    <li id="fbSetupSession">
      <span class="text-bold">
          <b>1. Setting up a feedback session</b>
        <br>
      </span>
      <div class="row">
        <div class="col-lg-6">
          To quickly create a session,
          <p></p>
          <ol>
            <li>
              Select a
              <b>Session type</b>
              <br>
              <span class="text-muted">
                <ul>
                  <li>
                    Session with your own questions
                  </li>
                  <li>
                    Team peer evaluation session (creates 5 standard questions)
                  </li>
                </ul>
              </span>
            </li>
            <li>
              Select a
              <b>Course ID</b> for which the session will be created
            </li>
            <li>
              Give it a nice
              <b>Session name</b>
            </li>
            <li>
              Select the
              <b>Submission opening/closing time</b>
              <span class="text-muted">
                <ul>
                  <li>
                    This is the time period where a student can submit responses.
                  </li>
                </ul>
              </span>
            </li>
            <li>
              Click
              <b>Create Feedback Session</b>!
            </li>
          </ol>
          <br>
          <br>
          <span class="text-muted">
            <a href="#fbSetupQuestions">Next step: Setting up questions</a>
          </span>
        </div>
        <div class="col-lg-6">
            <b>Advanced options:</b>
          <ul>
            <li>
              <b>Copy from previous feedback sessions</b>
              <span class="text-muted">
                <ul>
                  <li>
                    Copy from previously created feedback sessions to save time creating the same questions!
                  </li>
                </ul>
              </span>
            </li>
            <li>
              <b>Time zone</b>
              <span class="text-muted">
                <ul>
                  <li>
                    This is auto-detected from your computer and you should not need to change it.
                  </li>
                </ul>
              </span>
            </li>
            <li>
              <b>Instructions</b>
              <span class="text-muted">
                <ul>
                  <li>
                    Give more specific instructions to students
                  </li>
                </ul>
              </span>
            </li>
            <li>
              <b>Grace period</b>
              <span class="text-muted">
                <ul>
                  <li>
                    A small amount of time where students can still submit responses if the session closes while they are completing the session.
                  </li>
                </ul>
              </span>
            </li>
            <li>
              <b>Session visible from</b>
              <span class="text-muted">
                <ul>
                  <li>
                    When the students can see the questions (but cannot submit, until the session is
                    <i>open</i>)
                  </li>
                  <li>
                    Note the options for making the session private (for you to record your feedback about students, only you can see the session)
                  </li>
                </ul>
              </span>
            </li>
            <li>
              <b>Responses visible from</b>
              <span class="text-muted">
                <ul>
                  <li>
                    When the students can see results and responses from others.
                  </li>
                  <li>
                    Note the option for publishing the responses automatically at a given time.
                  </li>
                </ul>
              </span>
            </li>
            <li>
              <b>Send emails for</b>
              <span class="text-muted">
                <ul>
                  <li>
                    When emails are sent to students
                  </li>
                </ul>
              </span>
            </li>
            <li>
              <b>Private session</b>
              <span class="text-muted">
                <ul>
                  <li>
                    A private session is a session that is never visible to others.
                    This is for you to record your feedback about students, only you can see this session.
                    If you want to create a private session then set the "Session visible from" to Never.
                  </li>
                </ul>
              </span>
            </li>
          </ul>
        </div>
      </div>
      <br>
      <br>
      <p>
        This is the form used to set up sessions.
        <br>
        <br>
      </p>

      <div class="bs-example">
        <div id="createSessionHtmlCustomizable">

          <div class="well well-plain">
            <form class="form-group" name="form_feedbacksession">
              <div class="row" data-toggle="tooltip" data-placement="top" title="Select a different type of session here.">
                <h4 class="label-control col-md-2 text-md">Create new </h4>
                <div class="col-md-5">
                  <select class="form-control" name="fstype" id="fstype">
                    <option value="STANDARD" selected="">
                      Session with your own questions
                    </option>
                    <option value="TEAMEVALUATION">
                      Team peer evaluation session
                    </option>
                  </select>
                </div>
                <h4 class="label-control col-md-1 text-md">Or: </h4>
                <div class="col-md-3">
                  <a id="button_copy" class="btn btn-info" style="vertical-align:middle;">Copy from previous feedback sessions</a>
                </div>
              </div>
              <br>

              <div class="panel panel-primary">
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-6" data-toggle="tooltip" data-placement="top" title="Please select the course for which the feedback session is to be created.">
                      <div class="form-group">
                        <h5 class="col-sm-4">
                          <label for="courseid" class="control-label">Course ID</label>
                        </h5>
                        <div class="col-sm-8">
                          <select class="form-control" name="courseid" id="courseid">
                            <option value="CS1101">CS1101</option>
                            <option value="CS2013">CS2103</option>
                            <option value="Other course">Other course</option>
                          </select>

                        </div>
                      </div>
                    </div>
                    <div class="col-md-6" data-toggle="tooltip" data-placement="top" title="You should not need to change this as your timezone is auto-detected. <br><br>However, note that daylight saving is not taken into account i.e. if you are in UTC -8:00 and there is daylight saving, you should choose UTC -7:00 and its corresponding timings.">
                      <div class="form-group">
                        <h5 class="col-sm-4">
                          <label for="timezone" class="control-label">Timezone</label>
                        </h5>
                        <div class="col-sm-8">
                          <select class="form-control" name="timezone" id="timezone">
                            <option value="-12">(UTC -12:00) Baker Island, Howland Island</option>
                            <option value="-11">(UTC -11:00) American Samoa, Niue</option>
                            <option value="-10">(UTC -10:00) Hawaii, Cook Islands</option>
                            <option value="-9.5">(UTC -09:30) Marquesas Islands</option>
                            <option value="-9">(UTC -09:00) Gambier Islands, Alaska</option>
                            <option value="-8">(UTC -08:00) Los Angeles, Vancouver, Tijuana</option>
                            <option value="-7">(UTC -07:00) Phoenix, Calgary, Ciudad Juárez</option>
                            <option value="-6">(UTC -06:00) Chicago, Guatemala City, Mexico City, San José, San Salvador, Tegucigalpa, Winnipeg</option>
                            <option value="-5">(UTC -05:00) New York, Lima, Toronto, Bogotá, Havana, Kingston</option>
                            <option value="-4.5">(UTC -04:30) Caracas</option>
                            <option value="-4">(UTC -04:00) Santiago, La Paz, San Juan de Puerto Rico, Manaus, Halifax</option>
                            <option value="-3.5">(UTC -03:30) St. John's</option>
                            <option value="-3">(UTC -03:00) Buenos Aires, Montevideo, São Paulo</option>
                            <option value="-2">(UTC -02:00) Fernando de Noronha, South Georgia and the South Sandwich Islands</option>
                            <option value="-1">(UTC -01:00) Cape Verde, Greenland, Azores islands</option>
                            <option value="0">(UTC) Accra, Abidjan, Casablanca, Dakar, Dublin, Lisbon, London</option>
                            <option value="1">(UTC +01:00) Belgrade, Berlin, Brussels, Lagos, Madrid, Paris, Rome, Tunis, Vienna, Warsaw</option>
                            <option value="2">(UTC +02:00) Athens, Sofia, Cairo, Kiev, Istanbul, Beirut, Helsinki, Jerusalem, Johannesburg, Bucharest</option>
                            <option value="3">(UTC +03:00) Nairobi, Baghdad, Doha, Khartoum, Minsk, Riyadh</option>
                            <option value="3.5">(UTC +03:30) Tehran</option>
                            <option value="4">(UTC +04:00) Baku, Dubai, Moscow</option>
                            <option value="4.5">(UTC +04:30) Kabul</option>
                            <option value="5">(UTC +05:00) Karachi, Tashkent</option>
                            <option value="5.5">(UTC +05:30) Colombo, Delhi</option>
                            <option value="5.75">(UTC +05:45) Kathmandu</option>
                            <option value="6">(UTC +06:00) Almaty, Dhaka, Yekaterinburg</option>
                            <option value="6.5">(UTC +06:30) Yangon</option>
                            <option value="7">(UTC +07:00) Jakarta, Bangkok, Novosibirsk, Hanoi</option>
                            <option value="8">(UTC +08:00) Perth, Beijing, Manila, Singapore, Kuala Lumpur, Denpasar, Krasnoyarsk</option>
                            <option value="8.75">(UTC +08:45) Eucla</option>
                            <option value="9">(UTC +09:00) Seoul, Tokyo, Pyongyang, Ambon, Irkutsk</option>
                            <option value="9.5">(UTC +09:30) Adelaide</option>
                            <option value="10">(UTC +10:00) Canberra, Yakutsk, Port Moresby</option>
                            <option value="10.5">(UTC +10:30) Lord Howe Islands</option>
                            <option value="11">(UTC +11:00) Vladivostok, Noumea</option>
                            <option value="12">(UTC +12:00) Auckland, Suva</option>
                            <option value="12.75">(UTC +12:45) Chatham Islands</option>
                            <option value="13">(UTC +13:00) Phoenix Islands, Tokelau, Tonga</option>
                            <option value="14">(UTC +14:00) Line Islands</option>

                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                  <br>
                  <div class="row">
                    <div class="col-md-12" data-toggle="tooltip" data-placement="top" title="Enter the name of the feedback session e.g. Feedback Session 1.">
                      <div class="form-group">
                        <h5 class="col-sm-2">
                          <label for="fsname" class="control-label">Session name
                          </label>
                        </h5>
                        <div class="col-sm-10">
                          <input class="form-control" type="text" name="fsname" id="fsname" maxlength="38" value="" placeholder="e.g. Feedback for Project Presentation 1">
                        </div>
                      </div>
                    </div>
                  </div>
                  <br>
                  <div class="row" id="instructionsRow">
                    <div class="col-md-12" data-toggle="tooltip" data-placement="top" title="Enter instructions for this feedback session. e.g. Avoid comments which are too critical.<br> It will be displayed at the top of the page when users respond to the session.">
                      <div class="form-group">
                        <h5 class="col-sm-2">
                          <label for="instructions" class="control-label">Instructions</label>
                        </h5>
                        <div class="col-sm-10">
                          <textarea class="form-control" rows="4" cols="100%" name="instructions" id="instructions" placeholder="e.g. Please answer all the given questions.">Please answer all the given questions.</textarea>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel panel-primary" id="timeFramePanel">
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-5" data-toggle="tooltip" data-placement="top" title="Please select the date and time for which users can start submitting responses for the feedback session.">
                      <div class="row">
                        <div class="col-md-6">
                          <label for="startdate" class="label-control">
                            Submission opening time
                          </label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <input class="form-control col-sm-2 hasDatepicker" type="text" name="startdate" id="startdate" value="21/07/2014" placeholder="Date">
                        </div>
                        <div class="col-md-6">
                          <select class="form-control" name="starttime" id="starttime">
                            <option value="1">0100H</option>
                            <option value="2">0200H</option>
                            <option value="3">0300H</option>
                            <option value="4">0400H</option>
                            <option value="5">0500H</option>
                            <option value="6">0600H</option>
                            <option value="7">0700H</option>
                            <option value="8">0800H</option>
                            <option value="9">0900H</option>
                            <option value="10">1000H</option>
                            <option value="11">1100H</option>
                            <option value="12">1200H</option>
                            <option value="13">1300H</option>
                            <option value="14">1400H</option>
                            <option value="15">1500H</option>
                            <option value="16">1600H</option>
                            <option value="17">1700H</option>
                            <option value="18">1800H</option>
                            <option value="19">1900H</option>
                            <option value="20">2000H</option>
                            <option value="21">2100H</option>
                            <option value="22">2200H</option>
                            <option value="23">2300H</option>
                            <option value="24" selected="">2359H</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-5 border-left-gray" data-toggle="tooltip" data-placement="top" title="Please select the date and time after which the feedback session will no longer accept submissions from users.">
                      <div class="row">
                        <div class="col-md-6">
                          <label for="enddate" class="label-control">Submission closing time</label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <input class="form-control col-sm-2 hasDatepicker" type="text" name="enddate" id="enddate" value="" placeholder="Date">
                        </div>
                        <div class="col-md-6">
                          <select class="form-control" name="endtime" id="endtime">
                            <option value="1">0100H</option>
                            <option value="2">0200H</option>
                            <option value="3">0300H</option>
                            <option value="4">0400H</option>
                            <option value="5">0500H</option>
                            <option value="6">0600H</option>
                            <option value="7">0700H</option>
                            <option value="8">0800H</option>
                            <option value="9">0900H</option>
                            <option value="10">1000H</option>
                            <option value="11">1100H</option>
                            <option value="12">1200H</option>
                            <option value="13">1300H</option>
                            <option value="14">1400H</option>
                            <option value="15">1500H</option>
                            <option value="16">1600H</option>
                            <option value="17">1700H</option>
                            <option value="18">1800H</option>
                            <option value="19">1900H</option>
                            <option value="20">2000H</option>
                            <option value="21">2100H</option>
                            <option value="22">2200H</option>
                            <option value="23">2300H</option>
                            <option value="24" selected="">2359H</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-2 border-left-gray" data-toggle="tooltip" data-placement="top" title="Please select the amount of time that the system will continue accepting <br>submissions after the specified deadline.">
                      <div class="row">
                        <div class="col-md-12">
                          <label for="graceperiod" class="control-label">
                            Grace period
                          </label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm-12">
                          <select class="form-control" name="graceperiod" id="graceperiod">
                            <option value="0">0 mins</option>
                            <option value="5">5 mins</option>
                            <option value="10">10 mins</option>
                            <option value="15" selected="">15 mins</option>
                            <option value="20">20 mins</option>
                            <option value="25">25 mins</option>
                            <option value="30">30 mins</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
              <div class="panel panel-primary">
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="row">
                        <div class="col-md-6" data-toggle="tooltip" data-placement="top" title="Please select when you want the questions for the feedback session to be visible to users who need to participate. Note that users cannot submit their responses until the submissions opening time set below.">
                          <label class="label-control">
                            Session visible from
                          </label>
                        </div>
                      </div>
                      <div class="row radio">
                        <div class="col-md-2" data-toggle="tooltip" data-placement="top" title="Select this option to enter in a custom date and time for which the feedback session will become visible.<br>Note that you can make a session visible before it is open for submissions so that users can preview the questions.">
                          <label for="sessionVisibleFromButton_custom">At
                          </label>
                          <input type="radio" name="sessionVisibleFromButton" id="sessionVisibleFromButton_custom" value="custom">
                        </div>
                        <div class="col-md-5">
                          <input class="form-control col-sm-2 hasDatepicker" type="text" name="visibledate" id="visibledate" value="" disabled="">
                        </div>
                        <div class="col-md-4">
                          <select class="form-control" name="visibletime" id="visibletime" disabled="">

                            <option value="1">0100H</option>
                            <option value="2">0200H</option>
                            <option value="3">0300H</option>
                            <option value="4">0400H</option>
                            <option value="5">0500H</option>
                            <option value="6">0600H</option>
                            <option value="7">0700H</option>
                            <option value="8">0800H</option>
                            <option value="9">0900H</option>
                            <option value="10">1000H</option>
                            <option value="11">1100H</option>
                            <option value="12">1200H</option>
                            <option value="13">1300H</option>
                            <option value="14">1400H</option>
                            <option value="15">1500H</option>
                            <option value="16">1600H</option>
                            <option value="17">1700H</option>
                            <option value="18">1800H</option>
                            <option value="19">1900H</option>
                            <option value="20">2000H</option>
                            <option value="21">2100H</option>
                            <option value="22">2200H</option>
                            <option value="23">2300H</option>
                            <option value="24" selected="">2359H</option>
                          </select>
                        </div>
                      </div>
                      <div class="row radio">
                        <div class="col-md-6" data-toggle="tooltip" data-placement="top" title="Select this option to have the feedback session become visible when it is open for submissions (as selected above).">
                          <label for="sessionVisibleFromButton_atopen">Submission opening time </label>
                          <input type="radio" name="sessionVisibleFromButton" id="sessionVisibleFromButton_atopen" value="atopen">
                        </div>
                      </div>
                      <div class="row radio">
                        <div class="col-md-6" data-toggle="tooltip" data-placement="top" title="Select this option if you want the feedback session to never be visible. Use this option if you want to use this as a private feedback session.">
                          <label for="sessionVisibleFromButton_never">Never</label>
                          <input type="radio" name="sessionVisibleFromButton" id="sessionVisibleFromButton_never" value="never">
                        </div>
                      </div>
                    </div>

                    <div class="col-md-6 border-left-gray" id="responsesVisibleFromColumn">
                      <div class="row">
                        <div class="col-md-6" data-toggle="tooltip" data-placement="top" title="Please select when the responses for the feedback session will be visible to the designated recipients.<br>You can select the response visibility for each type of user and question later.">
                          <label class="label-control">Responses visible from</label>
                        </div>
                      </div>
                      <div class="row radio">
                        <div class="col-md-2" data-toggle="tooltip" data-placement="top" title="Select this option to use a custom time for when the responses of the feedback session<br>will be visible to the designated recipients.">
                          <label for="resultsVisibleFromButton_custom">At</label>

                          <input type="radio" name="resultsVisibleFromButton" id="resultsVisibleFromButton_custom" value="custom">
                        </div>
                        <div class="col-md-5">
                          <input class="form-control hasDatepicker" type="text" name="publishdate" id="publishdate" value="" disabled="">
                        </div>
                        <div class="col-md-4">
                          <select class="form-control" name="publishtime" id="publishtime" data-toggle="tooltip" data-placement="top" disabled="" title="Select this option to enter in a custom date and time for which</br>the responses for this feedback session will become visible.">
                            <option value="1">0100H</option>
                            <option value="2">0200H</option>
                            <option value="3">0300H</option>
                            <option value="4">0400H</option>
                            <option value="5">0500H</option>
                            <option value="6">0600H</option>
                            <option value="7">0700H</option>
                            <option value="8">0800H</option>
                            <option value="9">0900H</option>
                            <option value="10">1000H</option>
                            <option value="11">1100H</option>
                            <option value="12">1200H</option>
                            <option value="13">1300H</option>
                            <option value="14">1400H</option>
                            <option value="15">1500H</option>
                            <option value="16">1600H</option>
                            <option value="17">1700H</option>
                            <option value="18">1800H</option>
                            <option value="19">1900H</option>
                            <option value="20">2000H</option>
                            <option value="21">2100H</option>
                            <option value="22">2200H</option>
                            <option value="23">2300H</option>
                            <option value="24" selected="">2359H</option>
                          </select>
                        </div>
                      </div>
                      <div class="row radio">
                        <div class="col-md-3" data-toggle="tooltip" data-placement="top" title="Select this option to have the feedback responses be immediately visible<br>when the session becomes visible to users.">
                          <label for="resultsVisibleFromButton_atvisible">Immediately</label>
                          <input type="radio" name="resultsVisibleFromButton" id="resultsVisibleFromButton_atvisible" value="atvisible">
                        </div>
                      </div>
                      <div class="row radio">
                        <div class="col-md-4" data-toggle="tooltip" data-placement="top" title="Select this option if you intend to manually publish the session later on.">
                          <label for="resultsVisibleFromButton_later">Publish manually
                          </label>
                          <input type="radio" name="resultsVisibleFromButton" id="resultsVisibleFromButton_later" value="later">
                        </div>
                      </div>
                      <div class="row radio">
                        <div class="col-md-2" data-toggle="tooltip" data-placement="top" title="Select this option if you intend never to publish the responses.">
                          <label for="resultsVisibleFromButton_never">Never</label>
                          <input type="radio" name="resultsVisibleFromButton" id="resultsVisibleFromButton_never" value="never">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel panel-primary">
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-12">
                      <label class="control-label">Send emails for</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-2" data-toggle="tooltip" data-placement="top" title="If the student has not joined the course yet, an email containing the link to join the course will automatically be sent on session opening time.">
                      <div class="checkbox">
                        <label for="sendreminderemail_join">Join reminder
                        </label>
                        <input type="checkbox" id="sendreminderemail_join" disabled="">
                      </div>
                    </div>
                    <div class="col-sm-3" data-toggle="tooltip" data-placement="top" title="Select this option to automatically send an email to students to notify them when the session is open for submission." disabled="">
                      <div class="checkbox">
                        <label>Session opening reminder
                        </label>
                        <input type="checkbox" name="sendreminderemail" id="sendreminderemail_open" value="FEEDBACK_OPENING">
                      </div>
                    </div>
                    <div class="col-sm-3" data-toggle="tooltip" data-placement="top" title="Select this option to automatically send an email to students to remind them to submit 24 hours before the end of the session.">
                      <div class="checkbox">
                        <label for="sendreminderemail_closing">Session closing reminder</label>
                        <input type="checkbox" name="sendreminderemail" id="sendreminderemail_closing" value="FEEDBACK_CLOSING">
                      </div>
                    </div>
                    <div class="col-sm-4" data-toggle="tooltip" data-placement="top" title="Select this option to automatically send an email to students to notify them when the session results is published.">
                      <div class="checkbox">
                        <label for="sendreminderemail_published">Results published announcement</label>
                        <input type="checkbox" name="sendreminderemail" id="sendreminderemail_published" value="FEEDBACK_PUBLISHED">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="col-md-offset-5 col-md-3">
                  <button class="btn btn-primary">Create Feedback Session</button>
                </div>
              </div>
            </form>
            <br>
            <br>
          </div>

        </div>

      </div>
    </li>
    <br>
    <br>
    <br>
    <li id="fbSetupQuestions">
      <span class="text-bold">
          <b>2. Setting up questions</b>
      </span>
      <div>

        <p>
          After setting up a session, you will be brought to the session edit page to setup the questions. (You can also get here by clicking the edit button action for a particular session)
          <br> Depending on the session type that you selected, you might already see some questions.
          <br>
          <br> At the bottom of the page, you can add questions to the session:
        </p>

      </div>

      <div class="bs-example" id="addQuestion">
        <div class="well well-plain" id="addNewQuestionTable">
          <div class="row">
            <div class="col-sm-12 row">
              <div class="col-sm-offset-3 col-sm-9">
                <button id="button_openframe" class="btn btn-primary margin-bottom-7px dropdown-toggle" type="button" data-toggle="dropdown">
                  Add New Question <span class="caret"></span>
                </button>
                <ul id="add-new-question-dropdown" class="dropdown-menu">
                  <li data-questiontype="TEXT"><a href="javascript:;">Essay question</a></li>
                  <li data-questiontype="MCQ"><a href="javascript:;"> Multiple-choice (single answer) question</a></li>
                  <li data-questiontype="MSQ"><a href="javascript:;">Multiple-choice (multiple answers) question</a></li>
                  <li data-questiontype="NUMSCALE"><a href="javascript:;">Numerical-scale question</a></li>
                  <li data-questiontype="CONSTSUM_OPTION"><a href="javascript:;">Distribute points (among options) question</a></li>
                  <li data-questiontype="CONSTSUM_RECIPIENT"><a href="javascript:;">Distribute points (among recipients) question</a></li>
                  <li data-questiontype="CONTRIB"><a href="javascript:;">Team contribution question</a></li>
                  <li data-questiontype="RUBRIC"><a href="javascript:;">Rubric question</a></li>
                  <li data-questiontype="RANK_OPTIONS"><a href="javascript:;">Rank (options) question</a></li>
                  <li data-questiontype="RANK_RECIPIENTS"><a href="javascript:;">Rank (recipients) question</a></li>
                </ul>
                <a target="_blank" rel="noopener noreferrer">
                  <i class="glyphicon glyphicon-info-sign"></i>
                </a>
                <a id="button_copy" class="btn btn-primary margin-bottom-7px" data-actionlink="/page/instructorFeedbackQuestionCopyPage?user=test%40example.com" data-fsname="hgc" data-courseid="teammates.instructor.uni-demo" data-target="#copyModal" data-toggle="modal">
                  Copy Question
                </a>
                <a id="button_done_editing" class="btn btn-primary margin-bottom-7px">
                  Done Editing
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-6">
          <p>There are several question types to choose from.
            <br>See
            <a href="#fbQuestionTypes">here</a> for more information on each question type.
          </p>
          <ul>
            <li>
              <a href="#fbEssay">Essay question</a>
            </li>
            <li>
              <a href="#fbMcq">Multiple-choice (single answer) question</a>
            </li>
            <li>
              <a href="#fbMsq">Multiple-choice (multiple answers) question</a>
            </li>
            <li>
              <a href="#fbNumscale">Numerical-scale question</a>
            </li>
            <li>
              <a href="#fbConstSumOptions">Distribute points (among options) question</a>
            </li>
            <li>
              <a href="#fbConstSumRecipients">Distribute points (among recipients) question</a>
            </li>
            <li>
              <a href="#fbContrib">Team contribution question</a>
            </li>
            <li>
              <a href="#fbRubric">Rubric question</a>
            </li>
            <li>
              <a href="#fbRankOptions">Rank Options question</a>
            </li>
            <li>
              <a href="#fbRankRecipients">Rank Recipients question</a>
            </li>
          </ul>
          <br>
          <p>After selecting a question type, click
            <b>Add New Question</b> to add it to the session
          </p>
        </div>
        <div class="col-sm-6">
          <p>
            You can also
            <b>Copy Question</b> from existing feedback sessions and reuse the questions and their options to quickly set up the session.
            <br>
            <br>
            <br> Click
            <b>Done Editing</b> when you are finished with setting up all questions to return to the home page.
          </p>
        </div>
      </div>
      <br>
      <br>
      <p>
        Here, we set up a particular question after adding it to the session.
        <br> The following can be set:
      </p>
      <ul>
        <li>
          <b>Question text</b>
          <span class="text-muted"> - the question</span>
        </li>
        <li>
          <b>Feedback Path</b>
          <span class="text-muted"> - you can select a common feedback path from the dropdown menu, or choose "Other predefined combinations..." to select the Feedback Giver and Recipient separately.</span>
          <ul>
            <li>
              <b>Feedback Giver</b>
              <span class="text-muted"> - who gives the response (If you choose a ‘team’ as the giver, any member can submit the response on behalf of the team.)</span>
            </li>
            <li>
              <b>Feedback Recipient</b>
              <span class="text-muted"> - who the response is meant for/directed towards</span>
            </li>
          </ul>
        </li>
        <li>
          <b>Visibility options</b>
          <span class="text-muted"> - you can select a common visibility option from the dropdown menu, or choose "Custom visibility options..." to fully customize who can see the feedback response, the giver's identity, and the recipient's identity</span>
        </li>
      </ul>
      <p>
        <br> Given the example below, note how we can set the feedback path and visibility level for each question.
        <br> For the feedback path, "Other predefined combinations..." has been selected and further configured to be
        <b>for instructors</b> (i.e. you, tutors, co-lecturers) to give feedback
        <b>to the class in general</b>.
        <br> As for visibility options, only the instructors can see all the feedback responses as well as who gave feedback to whom.
        <br>
        <br>
      </p>

      <div class="bs-example" id="settingQuestion">

        <form class="form-horizontal form_question" editstatus="hasResponses">
          <div class="panel panel-primary questionTable">
            <div class="panel-heading">
              <div class="row">
                <div class="col-sm-12">
                  <span>
                    <strong>Question</strong>
                    <select class="questionNumber nonDestructive text-primary">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>

                    </select> &nbsp; Essay question
                  </span>
                  <span class="pull-right">
                    <a onclick="return false" class="btn btn-primary btn-xs">Cancel
                    </a>
                  </span>
                </div>
              </div>
            </div>
            <div class="panel-body">
              <div class="col-sm-12 padding-15px margin-bottom-15px background-color-light-blue">
                <div class="form-group" style="padding: 15px;">
                  <h5 class="col-sm-2">
                    <label class="control-label" for="questiontext--1">Question
                    </label>
                  </h5>
                  <div class="col-sm-10">
                    <textarea class="form-control textvalue nonDestructive" rows="2" name="questiontext" id="questiontext--1" data-toggle="tooltip" data-placement="top" title="" placeholder="A concise version of the question e.g. &quot;How well did the team member communicate?&quot;" tabindex="9" data-original-title="Please enter the question for users to give feedback about. e.g. What is the biggest weakness of the presented product?" style="z-index: auto; position: relative; line-height: 20px; font-size: 14px; transition: none; background: none 0% 0% / auto repeat scroll padding-box border-box rgb(255, 255, 255);"></textarea>
                  </div>
                </div>
                <div class="form-group" style="padding: 0 15px;">
                  <h5 class="col-sm-2">
                    <label class="align-left" for="questiondescription--1">[Optional]<br>Description
                    </label>
                  </h5>
                  <div class="col-sm-10">
                    <div class="panel panel-default panel-body question-description mce-content-body content-editor empty" id="questiondescription--1" data-toggle="tooltip" data-placement="top" title="" data-placeholder="More details about the question e.g. &quot;In answering the question, do consider communications made informally within the team, and formal communications with the instructors and tutors.&quot;" tabindex="9" data-original-title="Please enter the description of the question." contenteditable="true" style="position: relative;">
                    </div>
                  </div>
                  <div id="textForm" style="display: block;"><div>
                    <br>
                      <div class="row">
                        <div class="col-xs-12 question-recommended-length">[Optional]
                          <span data-toggle="tooltip" data-placement="top" title="" data-original-title="The recommended length is shown to the respondent but not enforced" class="tool-tip-decorate">Recommended length
                          </span> for the response:
                          <input type="number" class="form-control" name="recommendedlength" value=""> words
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
              <br>
              <div class="col-sm-12 padding-15px margin-bottom-15px background-color-light-green">
                <div class="col-sm-12 padding-0 margin-bottom-7px">
                  <b class="feedback-path-title">Feedback Path</b> (Who is giving feedback about whom?)
                </div>
                <div class="col-sm-12 feedback-path-dropdown btn-group">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Students in this course will give feedback on
                    <span class="glyphicon glyphicon-arrow-right"></span> Giver's team members
                  </button>
                  <ul class="dropdown-menu">
                    <li class="dropdown-header">Common feedback path combinations</li>
                    <li class="dropdown-submenu">
                      <a>Feedback session creator (i.e., me) will give feedback on...</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="SELF" data-recipient-type="NONE" data-path-description="Feedback session creator (i.e., me) will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Nobody specific (For general class feedback)">
                            Nobody specific (For general class feedback)
                          </a>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="SELF" data-recipient-type="SELF" data-path-description="Feedback session creator (i.e., me) will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver (Self feedback)">
                            Giver (Self feedback)
                          </a>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="SELF" data-recipient-type="INSTRUCTORS" data-path-description="Feedback session creator (i.e., me) will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Instructors in the course">
                            Instructors in the course
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu">
                      <a>Students in this course will give feedback on...</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="NONE" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Nobody specific (For general class feedback)">
                            Nobody specific (For general class feedback)
                          </a>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="SELF" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver (Self feedback)">
                            Giver (Self feedback)
                          </a>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="INSTRUCTORS" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Instructors in the course">
                            Instructors in the course
                          </a>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="OWN_TEAM_MEMBERS" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver's team members">
                            Giver's team members
                          </a>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="OWN_TEAM_MEMBERS_INCLUDING_SELF" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver's team members and Giver">
                            Giver's team members and Giver
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu">
                      <a>Instructors in this course will give feedback on...</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="INSTRUCTORS" data-recipient-type="NONE" data-path-description="Instructors in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Nobody specific (For general class feedback)">
                            Nobody specific (For general class feedback)
                          </a>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="INSTRUCTORS" data-recipient-type="SELF" data-path-description="Instructors in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver (Self feedback)">
                            Giver (Self feedback)
                          </a>
                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="INSTRUCTORS" data-recipient-type="INSTRUCTORS" data-path-description="Instructors in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Instructors in the course">
                            Instructors in the course
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li role="separator" class="divider"></li>
                    <li><a class="feedback-path-dropdown-option feedback-path-dropdown-option-other" href="javascript:;" data-path-description="Predefined combinations:">Other predefined combinations...</a></li>
                  </ul>
                </div>
              </div>
              <br>
              <div class="col-sm-12 margin-bottom-15px padding-15px background-color-light-green">
                <div class="col-sm-12 padding-0 margin-bottom-7px">
                  <b class="visibility-title">Visibility</b> (Who can see the responses?)
                </div>
                <div class="visibility-options-dropdown btn-group col-sm-12 margin-bottom-10px">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Shown anonymously to recipient, visible to instructors
                  </button>
                  <ul class="dropdown-menu">
                    <li class="dropdown-header">Common visibility options</li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="ANONYMOUS_TO_RECIPIENT_AND_INSTRUCTORS">Shown anonymously to recipient and instructors</a>
                    </li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="ANONYMOUS_TO_RECIPIENT_VISIBLE_TO_INSTRUCTORS">Shown anonymously to recipient, visible to instructors</a>
                    </li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="ANONYMOUS_TO_RECIPIENT_AND_TEAM_VISIBLE_TO_INSTRUCTORS">Shown anonymously to recipient and team members, visible to instructors</a>
                    </li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="VISIBLE_TO_INSTRUCTORS_ONLY">Visible to instructors only</a>
                    </li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="VISIBLE_TO_RECIPIENT_AND_INSTRUCTORS">Visible to recipient and instructors</a>
                    </li>

                    <li role="separator" class="divider"></li>
                    <li><a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="OTHER">Custom visibility options...</a></li>
                  </ul>
                </div>
                <!-- Fix for collapsing margin problem. Reference: http://stackoverflow.com/questions/6204670 -->
                <div class="col-sm-12 visibilityMessage overflow-hidden" id="visibilityMessage-2">
                  This is the visibility hint as seen by the feedback giver:
                  <ul class="text-muted background-color-warning">

                    <li>The receiving student can see your response, but not your name.</li>
                    <li>Instructors in this course can see your response, the name of the recipient, and your name.</li>
                  </ul>
                </div>
              </div>
              <div>
                <span class="pull-right">
                  <input id="button_question_submit-1" type="submit" onclick="return false" class="btn btn-primary" value="Save Question" tabindex="0" style="">
                </span>
              </div>
            </div>
          </div>

        </form>

      </div>

      <br>
      <span class="alert alert-success">
        <span class="glyphicon glyphicon-info-sign"></span> Remember to
        <b>Save Changes</b> to the question after editing!
      </span>
      <br>
      <br>When the session is open, an instructor can answer the above question. This is how it will look like:
      <br>
      <br>

      <div class="bs-example" id="intructorQuestionAnswer">

        <div class="form-horizontal">

          <div class="panel panel-primary">
            <div class="panel-heading">Question 1:
              <br>
              <span>Tutor's comments about the team presentation</span>
            </div>
            <div class="panel-body">
              <p class="text-muted">Only the following persons can see your responses: </p>
              <ul class="text-muted">

                <li class="unordered">The receiving teams can see your response, but not your name.</li>

                <li class="unordered">Instructors in this course can see your response, the name of the recipient, and your name.</li>

              </ul>
              <br>
              <div class="col-sm-12 form-inline mobile-align-left">
                <label for="input" style="text-indent: 24px">
                  <span data-toggle="tooltip" data-placement="top" title="" data-original-title="The party being evaluated or given feedback to" class="tool-tip-decorate">Evaluee/Recipient </span>
                </label>
              </div>

              <br>
              <br>
              <div class="form-group margin-0">
                <div class="col-sm-4 form-inline mobile-align-left" style="text-align:right">
                  <label for="input">
                    Team:
                  </label>
                  <select class="participantSelect middlealign newResponse form-control" name="responserecipient-1-0" style="width:200px;max-width:275px">
                    <option value="" selected=""></option>
                    <option value="Team 1">Team 1</option>
                    <option value="Team 2">Team 2</option>
                    <option value="Team 3">Team 3</option>
                  </select>
                </div>
                <div class="col-sm-8">
                  <div id="rich-text-toolbar-response-text-container-1-0"></div>
                  <div class="panel panel-default panel-body mce-content-body content-editor empty" id="responsetext-1-0" name="responsetext-1-0" data-length-text-id="responseLength-1-0" data-recommended-text="0" contenteditable="true" style="position: relative;" spellcheck="false"><p><br data-mce-bogus="1"></p></div><input type="hidden" name="responsetext-1-0">
                  <div class="margin-top-7px text-color-gray font-weight-normal">
                    <div class="col-md-6 padding-0" style="display:none">
                      Recommended length for the answer: <span id="recommendedLength-1-0">0 </span>words
                    </div>
                    <div class="pull-right">
                      Response length: <span id="responseLength-1-0" style="color: rgb(128, 128, 128);">0</span> words
                    </div>
                  </div>
                </div>
              </div>

              <br>
              <div class="form-group margin-0">
                <div class="col-sm-4 form-inline mobile-align-left" style="text-align:right">
                  <label for="input">
                    Team:
                  </label>
                  <select class="participantSelect middlealign newResponse form-control" name="responserecipient-1-0" style="width:200px;max-width:275px">
                    <option value="" selected=""></option>
                    <option value="Team 1">Team 1</option>
                    <option value="Team 2">Team 2</option>
                    <option value="Team 3">Team 3</option>
                  </select>
                </div>
                <div class="col-sm-8">
                  <div id="rich-text-toolbar-response-text-container-1-0"></div>
                  <div class="panel panel-default panel-body mce-content-body content-editor empty" id="responsetext-1-0" name="responsetext-1-0" data-length-text-id="responseLength-1-0" data-recommended-text="0" contenteditable="true" style="position: relative;" spellcheck="false"><p><br data-mce-bogus="1"></p></div><input type="hidden" name="responsetext-1-0">
                  <div class="margin-top-7px text-color-gray font-weight-normal">
                    <div class="col-md-6 padding-0" style="display:none">
                      Recommended length for the answer: <span id="recommendedLength-1-0">0 </span>words
                    </div>
                    <div class="pull-right">
                      Response length: <span id="responseLength-1-0" style="color: rgb(128, 128, 128);">0</span> words
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
      <br>
      <br>
      <br>Here is another example question:
      <br>
      <br>

      <div class="bs-example">
        <form class="form-horizontal form_question" role="form">
          <div class="panel panel-primary questionTable" id="intrHelpQuestionTable">
            <div class="panel-heading">
              <div class="row">
                <div class="col-sm-12">
                  <span>
                    <strong>Question</strong>
                    <select class="questionNumber nonDestructive text-primary" name="questionnum" id="questionnum-1">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                      <option value="10">10</option>
                      <option value="11">11</option>
                      <option value="12">12</option>
                      <option value="13">13</option>
                      <option value="14">14</option>

                    </select>
                    &nbsp; Multiple-choice (single answer)
                  </span>
                  <span class="pull-right">
                    <a class="btn btn-primary btn-xs" id="questionedittext-1" data-toggle="tooltip" data-placement="top" title="Edit this question" style="display: none;">Edit</a>
                    <a class="btn btn-primary btn-xs" style="" onclick="return false" id="questionsavechangestext-1">Cancel</a>
                  </span>
                </div>
              </div>
            </div>
            <div class="panel-body">
              <div class="col-sm-12 padding-15px margin-bottom-15px background-color-light-blue">
                <div class="form-group" style="padding: 15px;">
                  <h5 class="col-sm-2">
                    <label class="control-label" for="questiontext--1">
                      Question
                    </label>
                  </h5>
                  <div class="col-sm-10">
                    <textarea class="form-control textvalue nonDestructive" rows="2" name="questiontext" id="questiontext--1" data-toggle="tooltip" data-placement="top" title="" placeholder="A concise version of the question e.g. &quot;How well did the team member communicate?&quot;" tabindex="9" data-original-title="Please enter the question for users to give feedback about. e.g. What is the biggest weakness of the presented product?"></textarea>
                  </div>
                </div>
                <div class="form-group" style="padding: 15px;">
                  <h5 class="col-sm-2">
                    <label class="align-left" for="questiondescription--1">
                      [Optional]<br>Description
                    </label>
                  </h5>
                  <div class="col-sm-10">
                    <div id="rich-text-toolbar-q-descr-container"></div>
                    <div class="panel panel-default panel-body question-description mce-content-body content-editor empty" id="questiondescription--1" data-toggle="tooltip" data-placement="top" title="" data-placeholder="More details about the question e.g. &quot;In answering the question, do consider communications made informally within the team, and formal communications with the instructors and tutors.&quot;" tabindex="9" data-original-title="Please enter the description of the question." contenteditable="true" style="position: relative;" spellcheck="false"><p><br data-mce-bogus="1"></p></div>
                    <input type="hidden" name="questiondescription--1" disabled="" value="">
                    <input type="hidden" name="questiondescription" value="">
                  </div>
                  <div id="mcqForm" style="display: block;">
                    <div class="row">
                      <br>
                      <div class="col-sm-6">
                        <div id="mcqChoiceTable--1">
                          <div class="margin-bottom-7px" id="mcqOptionRow-0--1">
                            <div class="input-group width-100-pc">
                              <span class="input-group-addon">
                                <input type="radio" class="disabled_radio" disabled="">
                              </span>
                              <input class="form-control" type="text" name="mcqOption-0" id="mcqOption-0--1" value="">
                              <span class="input-group-btn">
                                <button class="btn btn-default removeOptionLink" type="button" id="mcqRemoveOptionLink" onclick="removeMcqOption(0,-1)" style="" tabindex="-1">
                                  <span class="glyphicon glyphicon-remove">
                                  </span>
                                </button>
                              </span>
                            </div>
                          </div>
                          <div class="margin-bottom-7px" id="mcqOptionRow-1--1">
                            <div class="input-group width-100-pc">
                              <span class="input-group-addon">
                                <input type="radio" class="disabled_radio" disabled="">
                              </span>
                              <input class="form-control" type="text" name="mcqOption-1" id="mcqOption-1--1" value="">
                              <span class="input-group-btn">
                                <button class="btn btn-default removeOptionLink" type="button" id="mcqRemoveOptionLink" onclick="removeMcqOption(1,-1)" style="" tabindex="-1">
                                  <span class="glyphicon glyphicon-remove">
                                  </span>
                                </button>
                              </span>
                            </div>
                          </div>

                          <div id="mcqAddOptionRow--1">
                            <div colspan="2">
                              <a class="btn btn-primary btn-xs addOptionLink" id="mcqAddOptionLink--1" onclick="addMcqOption(-1)" style="">
                                <span class="glyphicon glyphicon-plus">
                                </span> add more options
                              </a>

                              <div class="checkbox">
                                <label class="bold-label">
                                  <input type="checkbox" name="mcqOtherOptionFlag" id="mcqOtherOptionFlag--1" onchange="toggleMcqOtherOptionEnabled(this, -1)">
                                  Add 'Other' option (Allows respondents to type in their own answer)
                                </label>
                              </div>
                            </div>
                          </div>
                        </div>
                        <input type="hidden" name="noofchoicecreated" id="noofchoicecreated--1" value="2">
                      </div>
                      <div class="col-sm-6 col-lg-5">
                        <div class="border-gray narrow-slight visible-xs margin-bottom-7px margin-top-7px"></div>
                        <div class="checkbox padding-top-0">
                          <label class="bold-label">
                            <span class="inline-block">
                              <input type="checkbox" id="generateOptionsCheckbox--1" onchange="toggleMcqGeneratedOptions(this,-1)">
                              Or, generate options from the list of all
                            </span>
                          </label>
                          <select class="form-control width-auto inline" id="mcqGenerateForSelect--1" onchange="changeMcqGenerateFor(-1)" disabled="">
                            <option value="STUDENTS">students</option>
                            <option value="TEAMS">teams</option>
                            <option value="INSTRUCTORS">instructors</option>
                          </select>
                        </div>
                        <input type="hidden" id="generatedOptions--1" name="generatedOptions" value="NONE">
                      </div>
                      <br>
                    </div>
                  </div>
                </div>
              </div>
              <br>
              <div class="col-sm-12 padding-15px margin-bottom-15px background-color-light-green">
                <div class="col-sm-12 padding-0 margin-bottom-7px">
                  <b class="feedback-path-title">Feedback Path</b> (Who is giving feedback about whom?)
                </div>
                <div class="feedback-path-dropdown col-sm-12 btn-group">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Please select a feedback path <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu">
                    <li class="dropdown-header">Common feedback path combinations</li>

                    <li class="dropdown-submenu">

                      <a>Feedback session creator (i.e., me) will give feedback on...</a>
                      <ul class="dropdown-menu">
                        <li>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="SELF" data-recipient-type="NONE" data-path-description="Feedback session creator (i.e., me) will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Nobody specific (For general class feedback)">
                            Nobody specific (For general class feedback)
                          </a>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="SELF" data-recipient-type="SELF" data-path-description="Feedback session creator (i.e., me) will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver (Self feedback)">
                            Giver (Self feedback)
                          </a>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="SELF" data-recipient-type="INSTRUCTORS" data-path-description="Feedback session creator (i.e., me) will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Instructors in the course">
                            Instructors in the course
                          </a>

                        </li>
                      </ul>
                    </li>

                    <li class="dropdown-submenu">

                      <a>Students in this course will give feedback on...</a>
                      <ul class="dropdown-menu">
                        <li>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="NONE" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Nobody specific (For general class feedback)">
                            Nobody specific (For general class feedback)
                          </a>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="SELF" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver (Self feedback)">
                            Giver (Self feedback)
                          </a>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="INSTRUCTORS" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Instructors in the course">
                            Instructors in the course
                          </a>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="OWN_TEAM_MEMBERS" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver's team members">
                            Giver's team members
                          </a>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="OWN_TEAM_MEMBERS_INCLUDING_SELF" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver's team members and Giver">
                            Giver's team members and Giver
                          </a>

                        </li>
                      </ul>
                    </li>

                    <li class="dropdown-submenu">

                      <a>Instructors in this course will give feedback on...</a>
                      <ul class="dropdown-menu">
                        <li>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="INSTRUCTORS" data-recipient-type="NONE" data-path-description="Instructors in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Nobody specific (For general class feedback)">
                            Nobody specific (For general class feedback)
                          </a>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="INSTRUCTORS" data-recipient-type="SELF" data-path-description="Instructors in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver (Self feedback)">
                            Giver (Self feedback)
                          </a>

                          <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="INSTRUCTORS" data-recipient-type="INSTRUCTORS" data-path-description="Instructors in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Instructors in the course">
                            Instructors in the course
                          </a>

                        </li>
                      </ul>
                    </li>

                    <li role="separator" class="divider"></li>
                    <li><a class="feedback-path-dropdown-option feedback-path-dropdown-option-other" href="javascript:;" data-path-description="Predefined combinations:">Other predefined combinations...</a></li>
                  </ul>
                </div>
              </div>
              <br>
              <div class="col-sm-12 margin-bottom-15px padding-15px background-color-light-green">
                <div class="col-sm-12 padding-0 margin-bottom-7px">
                  <b class="visibility-title">Visibility</b> (Who can see the responses?)
                </div>
                <div class="visibility-options-dropdown btn-group col-sm-12 margin-bottom-10px">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Please select a visibility option <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu">
                    <li class="dropdown-header">Common visibility options</li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="ANONYMOUS_TO_RECIPIENT_AND_INSTRUCTORS">Shown anonymously to recipient and instructors</a>
                    </li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="ANONYMOUS_TO_RECIPIENT_VISIBLE_TO_INSTRUCTORS">Shown anonymously to recipient, visible to instructors</a>
                    </li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="ANONYMOUS_TO_RECIPIENT_AND_TEAM_VISIBLE_TO_INSTRUCTORS">Shown anonymously to recipient and team members, visible to instructors</a>
                    </li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="VISIBLE_TO_INSTRUCTORS_ONLY">Visible to instructors only</a>
                    </li>

                    <li>
                      <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="VISIBLE_TO_RECIPIENT_AND_INSTRUCTORS">Visible to recipient and instructors</a>
                    </li>

                    <li role="separator" class="divider"></li>
                    <li><a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="OTHER">Custom visibility options...</a></li>
                  </ul>
                </div>
                <div class="visibilityOptions col-sm-12 overflow-hidden" id="visibilityOptions-2" style="display:none;">
                  <table class="dataTable participantTable table table-striped text-center background-color-white margin-bottom-10px">
                    <tbody>
                      <tr>
                        <th class="text-center">User/Group</th>
                        <th class="text-center">Can see answer</th>
                        <th class="text-center">Can see giver's name</th>
                        <th class="text-center">Can see recipient's name</th>
                      </tr>
                      <tr>
                        <td class="text-left">
                          <div data-toggle="tooltip" data-placement="top" title="" data-original-title="Control what feedback recipient(s) can view">
                            Recipient(s)
                          </div>
                        </td>
                        <td>
                          <input class="visibilityCheckbox answerCheckbox centered" name="receiverLeaderCheckbox" type="checkbox" value="RECEIVER" checked="">
                        </td>
                        <td>
                          <input class="visibilityCheckbox giverCheckbox" type="checkbox" value="RECEIVER" checked="">
                        </td>
                        <td>
                          <input class="visibilityCheckbox recipientCheckbox" name="receiverFollowerCheckbox" type="checkbox" value="RECEIVER" disabled="" checked="">
                        </td>
                      </tr>
                      <tr>
                        <td class="text-left">
                          <div data-toggle="tooltip" data-placement="top" title="" data-original-title="Control what team members of feedback giver can view">
                            Giver's Team Members
                          </div>
                        </td>
                        <td>
                          <input class="visibilityCheckbox answerCheckbox" type="checkbox" value="OWN_TEAM_MEMBERS">
                        </td>
                        <td>
                          <input class="visibilityCheckbox giverCheckbox" type="checkbox" value="OWN_TEAM_MEMBERS">
                        </td>
                        <td>
                          <input class="visibilityCheckbox recipientCheckbox" type="checkbox" value="OWN_TEAM_MEMBERS">
                        </td>
                      </tr>
                      <tr>
                        <td class="text-left">
                          <div data-toggle="tooltip" data-placement="top" title="" data-original-title="Control what team members of feedback recipients can view">
                            Recipient's Team Members
                          </div>
                        </td>
                        <td>
                          <input class="visibilityCheckbox answerCheckbox" type="checkbox" value="RECEIVER_TEAM_MEMBERS">
                        </td>
                        <td>
                          <input class="visibilityCheckbox giverCheckbox" type="checkbox" value="RECEIVER_TEAM_MEMBERS">
                        </td>
                        <td>
                          <input class="visibilityCheckbox recipientCheckbox" type="checkbox" value="RECEIVER_TEAM_MEMBERS">
                        </td>
                      </tr>
                      <tr>
                        <td class="text-left">
                          <div data-toggle="tooltip" data-placement="top" title="" data-original-title="Control what other students can view">
                            Other students
                          </div>
                        </td>
                        <td>
                          <input class="visibilityCheckbox answerCheckbox" type="checkbox" value="STUDENTS">
                        </td>
                        <td>
                          <input class="visibilityCheckbox giverCheckbox" type="checkbox" value="STUDENTS">
                        </td>
                        <td>
                          <input class="visibilityCheckbox recipientCheckbox" type="checkbox" value="STUDENTS">
                        </td>
                      </tr>
                      <tr>
                        <td class="text-left">
                          <div data-toggle="tooltip" data-placement="top" title="" data-original-title="Control what instructors can view">
                            Instructors
                          </div>
                        </td>
                        <td>
                          <input class="visibilityCheckbox answerCheckbox" type="checkbox" value="INSTRUCTORS" checked="">
                        </td>
                        <td>
                          <input class="visibilityCheckbox giverCheckbox" type="checkbox" value="INSTRUCTORS" checked="">
                        </td>
                        <td>
                          <input class="visibilityCheckbox recipientCheckbox" type="checkbox" value="INSTRUCTORS" checked="">
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <!-- Fix for collapsing margin problem. Reference: http://stackoverflow.com/questions/6204670 -->
                <div class="col-sm-12 visibilityMessage overflow-hidden" id="visibilityMessage-2">
                  This is the visibility hint as seen by the feedback giver:
                  <ul class="text-muted background-color-warning">

                    <li>You can see your own feedback in the results page later on.</li>

                    <li>Instructors in this course can see your response, the name of the recipient, and your name.</li>

                  </ul>
                </div>
              </div>
              <div>
                <span class="pull-right">
                  <input id="button_question_submit-1" type="submit" onclick="return false;" class="btn btn-primary" value="Save Question" tabindex="0" style="">
                </span>
              </div>
            </div>
          </div>
        </form>
      </div> This question is for students to give feedback to their own team members. The feedback receiver can see the feedback, but not who gave the feedback. Instructors can see who received what feedback, but not who gave the feedback.
      <br>
      <br>As you can see, these session are very flexible and can cater for a wide variety of feedback scenarios, all within a single session.
      <br>

    </li>
    <br>
    <br>
    <br>
    <li id="fbPreview">
      <span class="text-bold">
          <b>3. Previewing a session</b>
        </a>
      </span>

      <p>
        To see how the session looks like to anyone in the course, we can use the
        <b>Preview as</b> feature to take a look at how the current session would look like to any student or instructor when they are submitting responses.
        <br>
        <br> This allows easy and convenient confirmation that the questions and their settings are correct.
      </p>

      <div class="bs-example" id="preview">
        <div class="well well-plain" id="questionPreviewTable">
          <div class="row">
            <form class="form-horizontal">
              <label class="control-label col-sm-2 text-right">
                Preview Session:
              </label>
            </form>
            <div class="col-sm-5" data-toggle="tooltip" data-placement="top" title="View how this session would look like to a student who is submitting feedback.<br>Preview is unavailable if the course has yet to have any student enrolled.">
              <form name="form_previewasstudent" class="form_preview">
                <div class="col-sm-6">
                  <select class="form-control" name="previewas">
                    <option value="alice.b.tmms@gmail.com">[Team 1] Alice Betsy</option>
                    <option value="benny.c.tmms@gmail.com">[Team 1] Benny Charles</option>
                    <option value="danny.e.tmms@gmail.com">[Team 1] Danny Engrid</option>
                    <option value="emma.f.tmms@gmail.com">[Team 1] Emma Farrell</option>
                    <option value="charlie.d.tmms@gmail.com">[Team 2] Charlie Davis</option>
                    <option value="francis.g.tmms@gmail.com">[Team 2] Francis Gabriel</option>
                    <option value="gene.h.tmms@gmail.com">[Team 2] Gene Hudson</option>
                  </select>
                </div>
                <div class="col-sm-6">
                  <input id="button_preview_student" class="btn btn-primary" value="Preview as Student">
                </div>
              </form>
            </div>
            <div class="col-sm-5" data-toggle="tooltip" data-placement="top" title="View how this session would look like to an instructor who is submitting feedback.">
              <form class="form_preview">
                <div class="col-sm-6">
                  <select class="form-control" name="previewas">
                    <option value="inst@gmail.com">Instructor A</option>
                  </select>
                </div>
                <div class="col-sm-6">
                  <input id="button_preview_instructor" class="btn btn-primary" value="Preview as Instructor">
                </div>
              </form>
            </div>
          </div>
        </div>
        <div>
        </div>
      </div>
    </li>
    <br>
    <br>
    <li id="fbViewResults">
      <span class="text-bold">
          <b>4. Viewing results</b>
        </a>
      </span>

      <p>
        You can view results of sessions by clicking the
        <b>View Results</b> action of a session
        <br>You can see responses in several different formats using the following controls.
        <br>
        <br> There are
        <b>5</b> different views available, which indicate the order in which responses are grouped. Additionally, there are also options to
        <b>group the results by team</b> and
        <b>show/hide statistics</b> (available in some views), as well as options to view responses from a particular section.
        <br> We can also filter results on the page using the filter function.
      </p>
      <div class="bs-example" id="resultsTop">
        <div class="panel panel-info margin-0">
          <div class="panel-body">
            <div class="row">
              <div class="col-sm-5" data-toggle="tooltip" title="View results in different formats">
                <div class="form-group">
                  <label for="viewSelect" class="col-sm-2 control-label">
                    View:
                  </label>
                  <div class="col-sm-10">
                    <select id="viewSelect" class="form-control" name="frsorttype">
                      <option value="question" selected="">
                        Group by - Question
                      </option>
                      <option value="giver-recipient-question">
                        Group by - Giver &gt; Recipient &gt; Question
                      </option>
                      <option value="recipient-giver-question">
                        Group by - Recipient &gt; Giver &gt; Question
                      </option>
                      <option value="giver-question-recipient">
                        Group by - Giver &gt; Question &gt; Recipient
                      </option>
                      <option value="recipient-question-giver">
                        Group by - Recipient &gt; Question &gt; Giver
                      </option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-sm-2 pull-right">
                <div class="col-sm-12" data-toggle="tooltip" title="Group results in the current view by team">
                  <div class="margin-0 checkbox padding-top-0 min-height-0">
                    <label class="text-strike">
                      <input type="checkbox" name="frgroupbyteam" id="frgroupbyteam"> Group by Teams
                    </label>
                  </div>
                </div>
                <div class="col-sm-12" data-toggle="tooltip" title="Show statistics">
                  <div class="margin-0 checkbox padding-top-0 min-height-0">
                    <label>
                      <input type="checkbox" id="show-stats-checkbox" name="frshowstats"> Show Statistics
                    </label>
                  </div>
                </div>
                <div class="col-sm-12" data-toggle="tooltip" title="Indicate missing responses">
                  <div class="margin-0 checkbox padding-top-0 min-height-0">
                    <label>
                      <input type="checkbox" id="show-stats-checkbox" name="frshowstats"> Indicate Missing Responses
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-5" data-toggle="tooltip" title="View results in separated section">
                <div class="form-group">
                  <label for="sectionSelect" class="col-sm-2 control-label">
                    Section:
                  </label>
                  <div class="col-sm-10">
                    <select id="sectionSelect" class="form-control" name="frgroupbysection">
                      <option value="All" selected="">
                        All
                      </option>
                      <option value="Tutorial Group 1">
                        Tutorial Group 1
                      </option>
                      <option value="Tutorial Group 2">
                        Tutorial Group 2
                      </option>
                      <option value="No specific section">
                        No specific section
                      </option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      An example is given below:
      <br>
      <br>

      <div class="bs-example" id="responcesSortbyGiver">
        <div class="well well-plain">

          <div class="panel panel-primary">
            <div class="panel-heading">
              From:
              <strong>Alice Betsy (Team 2)</strong>
              <a class="link-in-dark-bg" href="#responcesSortbyGiver">[alice.b.tmms@gmail.com]</a>
              <div class="pull-right">
                <form class="inline" method="post" action="/page/instructorEditStudentFeedbackPage?user=test%40example.com" target="_blank">
                  <input type="submit" class="btn btn-primary btn-xs" value="Moderate Responses" data-toggle="tooltip" title="" data-original-title="Edit the responses given by this student" disabled="disabled">
                </form>
                &nbsp;
                <div class="display-icon" style="display:inline;">
                  <span class="glyphicon glyphicon-chevron-up pull-right"></span>
                </div>
              </div>
            </div>
            <div class="panel-body">

              <div class="row ">
                <div class="col-md-2">
                  <div class="col-md-12 tablet-margin-10px tablet-no-padding">
                    To:
                    <br>
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      <strong>-</strong>
                    </div>
                  </div>

                  <div class="col-md-12 tablet-margin-10px tablet-no-padding text-muted small"><br class="hidden-xs hidden-sm">
                    From:
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      Alice Betsy (Team 2)
                    </div>
                  </div>
                </div>
                <div class="col-md-10">

                  <div class="panel panel-info">
                    <div class="panel-heading">
                      Question 6: What do you like about our product?
                      <br>
                      <small>
                        <span>Multiple-choice (multiple answers) options:
                          <ul style="list-style-type: disc;">
                            <li>It's good
                            </li>
                            <li>It's perfect
                            </li>
                          </ul>
                        </span>
                      </small>
                    </div>
                    <div class="panel-body">
                      <div style="clear: both; overflow: hidden">
                        <div class="pull-left">
                          <ul class="selectedOptionsList">
                            <li>It's good
                            </li>
                          </ul>
                        </div>
                        <button type="button" class="btn btn-default btn-xs icon-button pull-right" data-toggle="tooltip" data-placement="top" title="Add comment">
                          <span class="glyphicon glyphicon-comment glyphicon-primary"></span>
                        </button>
                      </div>

                    </div>
                  </div>

                </div>
              </div>

              <div class="row border-top-gray">
                <div class="col-md-2">
                  <div class="col-md-12 tablet-margin-10px tablet-no-padding">
                    To:
                    <br>
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      <strong>Alice Betsy (Team 2)</strong>
                    </div>
                  </div>

                  <div class="col-md-12 tablet-margin-10px tablet-no-padding text-muted small"><br class="hidden-xs hidden-sm">
                    From:
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      Alice Betsy (Team 2)
                    </div>
                  </div>
                </div>
                <div class="col-md-10">

                  <div class="panel panel-info">
                    <div class="panel-heading">Question 1: What is the best selling point of your product?
                    </div>
                    <div class="panel-body">
                      <div style="clear: both; overflow: hidden">
                        <div class="pull-left">My product is light.
                        </div>
                        <button type="button" class="btn btn-default btn-xs icon-button pull-right" data-toggle="tooltip" data-placement="top" title="Add comment">
                          <span class="glyphicon glyphicon-comment glyphicon-primary"></span>
                        </button>
                      </div>

                    </div>
                  </div>

                </div>
              </div>

              <div class="row border-top-gray">
                <div class="col-md-2">
                  <div class="col-md-12 tablet-margin-10px tablet-no-padding">
                    To:
                    <br>
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      <strong>Benny Charles (Team 1)</strong>
                    </div>
                  </div>

                  <div class="col-md-12 tablet-margin-10px tablet-no-padding text-muted small"><br class="hidden-xs hidden-sm">
                    From:
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      Alice Betsy (Team 2)
                    </div>
                  </div>
                </div>
                <div class="col-md-10">

                  <div class="panel panel-info">
                    <div class="panel-heading">Question 2: Comment about 5 other students</div>
                    <div class="panel-body">
                      <div style="clear: both; overflow: hidden">
                        <div class="pull-left">Benny is a good student.
                        </div>
                        <button type="button" class="btn btn-default btn-xs icon-button pull-right" data-toggle="tooltip" data-placement="top" title="Add comment">
                          <span class="glyphicon glyphicon-comment glyphicon-primary"></span>
                        </button>
                      </div>

                    </div>
                  </div>

                </div>
              </div>

            </div>
          </div>

          <div class="panel panel-primary" id="benny">
            <div class="panel-heading">
              From:
              <strong>Benny Charles (Team 1)</strong>
              <a class="link-in-dark-bg" href="#benny">[benny.c.tmms@gmail.com]</a>
              <div class="pull-right">
                <form class="inline" method="post" action="/page/instructorEditStudentFeedbackPage?user=test%40example.com" target="_blank">
                  <input type="submit" class="btn btn-primary btn-xs" value="Moderate Responses" data-toggle="tooltip" title="" data-original-title="Edit the responses given by this student" disabled="disabled">
                </form>
                &nbsp;
                <div class="display-icon" style="display:inline;">
                  <span class="glyphicon glyphicon-chevron-up pull-right"></span>
                </div>
              </div>
            </div>
            <div class="panel-body">

              <div class="row ">
                <div class="col-md-2">
                  <div class="col-md-12 tablet-margin-10px tablet-no-padding">
                    To:
                    <br>
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      <strong>Charlie Davis (Team 1)</strong>
                    </div>
                  </div>

                  <div class="col-md-12 tablet-margin-10px tablet-no-padding text-muted small"><br class="hidden-xs hidden-sm">
                    From:
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      Benny Charles (Team 1)
                    </div>
                  </div>
                </div>
                <div class="col-md-10">

                  <div class="panel panel-info">
                    <div class="panel-heading">Question 2: Comment about 5 other students</div>
                    <div class="panel-body">
                      <div style="clear: both; overflow: hidden">
                        <div class="pull-left">Charlie did alot of work.</div>
                        <button type="button" class="btn btn-default btn-xs icon-button pull-right" data-toggle="tooltip" data-placement="top" title="Add comment">
                          <span class="glyphicon glyphicon-comment glyphicon-primary"></span>
                        </button>
                      </div>

                    </div>
                  </div>

                </div>
              </div>

              <div class="row border-top-gray">
                <div class="col-md-2">
                  <div class="col-md-12 tablet-margin-10px tablet-no-padding">
                    To:
                    <br>
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      <strong>Danny Engrid (Team 2)</strong>
                    </div>
                  </div>

                  <div class="col-md-12 tablet-margin-10px tablet-no-padding text-muted small"><br class="hidden-xs hidden-sm">
                    From:
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      Benny Charles (Team 1)
                    </div>
                  </div>
                </div>
                <div class="col-md-10">

                  <div class="panel panel-info">
                    <div class="panel-heading">Question 2: Comment about 5 other students</div>
                    <div class="panel-body">
                      <div style="clear: both; overflow: hidden">
                        <div class="pull-left">Danny starts with D.</div>
                        <button type="button" class="btn btn-default btn-xs icon-button pull-right" data-toggle="tooltip" data-placement="top" title="Add comment">
                          <span class="glyphicon glyphicon-comment glyphicon-primary"></span>
                        </button>
                      </div>

                    </div>
                  </div>

                </div>
              </div>

            </div>
          </div>
          <!-- second -->
          <div class="panel panel-primary" id="charlie">
            <div class="panel-heading">
              From:
              <strong>Charlie Davis (Team 1)</strong>
              <a class="link-in-dark-bg" href="#charlie">[charlie.d.tmms@gmail.com]</a>
              <div class="pull-right">
                <form class="inline" method="post" action="/page/instructorEditStudentFeedbackPage?user=test%40example.com" target="_blank">
                  <input type="submit" class="btn btn-primary btn-xs" value="Moderate Responses" data-toggle="tooltip" title="" data-original-title="Edit the responses given by this student" disabled="disabled">
                </form>
                &nbsp;
                <div class="display-icon" style="display:inline;">
                  <span class="glyphicon glyphicon-chevron-up pull-right"></span>
                </div>
              </div>
            </div>
            <div class="panel-body">

              <div class="row ">
                <div class="col-md-2">
                  <div class="col-md-12 tablet-margin-10px tablet-no-padding">
                    To:
                    <br>
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      <strong>Alice Betsy (Team 2)</strong>
                    </div>
                  </div>

                  <div class="col-md-12 tablet-margin-10px tablet-no-padding text-muted small"><br class="hidden-xs hidden-sm">
                    From:
                    <div class="tablet-bottom-align profile-pic-icon-hover inline-block">
                      Charlie Davis (Team 1)
                    </div>
                  </div>
                </div>
                <div class="col-md-10">

                  <div class="panel panel-info">
                    <div class="panel-heading">Question 2: Comment about 5 other students</div>
                    <div class="panel-body">
                      <div style="clear: both; overflow: hidden">
                        <div class="pull-left">Alice is a good coder.
                        </div>
                        <button type="button" class="btn btn-default btn-xs icon-button pull-right" data-toggle="tooltip" data-placement="top" title="Add comment">
                          <span class="glyphicon glyphicon-comment glyphicon-primary"></span>
                        </button>
                      </div>

                    </div>
                  </div>

                </div>
              </div>

            </div>
          </div>
          <!-- third -->

          <div class="panel panel-warning">
            <div class="panel-heading" data-target="#panelBodyCollapse-12" style="cursor: pointer;">
              <div class="display-icon pull-right">
                <span class="glyphicon pull-right glyphicon-chevron-up"></span>
              </div>
              Participants who have not responded to any question
            </div>
            <div class="panel-collapse collapse in" id="panelBodyCollapse-12" style="height: auto;">
              <div class="panel-body padding-0">
                <table class="table table-striped table-bordered margin-0">
                  <thead class="background-color-medium-gray text-color-gray font-weight-normal">
                    <tr>
                      <th id="button_sortFromTeam" class="button-sort-none" onclick="toggleSort(this)" style="width: 30%;">
                        Team
                      </th>
                      <th id="button_sortTo" class="button-sort-ascending" onclick="toggleSort(this)" style="width: 30%;">
                        Name
                      </th>
                      <th class="action-header">
                        Actions
                      </th>
                    </tr>
                  </thead>
                  <tbody>

                    <tr>
                      <td>Team 3</td>
                      <td>Danny Engrid</td>
                      <td class="action-button-item">
                        <form class="inline" method="post">
                          <input type="submit" class="btn btn-default btn-xs" value="Submit Responses" data-toggle="tooltip" title="" data-original-title="Edit the responses given by this student" disabled="disabled">
                        </form>
                      </td>
                    </tr>

                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
      </div>
      <br>
      <br>
      <br>If you publish results, students receive an email with a link to access responses. What they can see is governed by the visibility levels you set when setting up the session. Here is an example of what a student sees:
      <br>
      <br>
      <br>

      <div class="bs-example">

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4>Question 1: Tutor comments about the team presentation</h4>

            <div class="panel panel-primary">
              <div class="panel-heading">
                <b>To:</b> Team 1
              </div>
              <table class="table">
                <tbody>

                  <tr class="resultSubheader">
                    <td>
                      <span class="bold">
                        <b>From:</b>
                      </span> Tutor James Hardy
                    </td>
                  </tr>
                  <tr>
                    <td class="multiline">The content was good but overran the time limit</td>
                  </tr>

                </tbody>
              </table>
            </div>

            <div class="panel panel-primary">
              <div class="panel-heading">
                <b>To:</b> Team 1
              </div>
              <table class="table">
                <tbody>

                  <tr class="resultSubheader">
                    <td>
                      <span class="bold">
                        <b>From:</b>
                      </span> Dr Lee Davis
                    </td>
                  </tr>
                  <tr>
                    <td class="multiline">Good presentation.Please keep to the time limit
                    </td>
                  </tr>

                </tbody>
              </table>
            </div>

          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4>
              Question 2: Was this team member punctual?
              <br>
              <small>
                Multiple-choice (single answer) options:
                <ul style="list-style-type: disc;">
                  <li>Yes</li>
                  <li>No</li>
                </ul>

              </small>

            </h4>

            <div class="panel panel-primary">
              <div class="panel-heading">
                <b>To:</b> You
              </div>
              <table class="table">
                <tbody>

                  <tr class="resultSubheader">
                    <td>
                      <span class="bold">
                        <b>From:</b>
                      </span> anonymous
                    </td>
                  </tr>
                  <tr>
                    <td class="multiline">No</td>
                  </tr>

                </tbody>
              </table>
            </div>

            <div class="panel panel-primary">
              <div class="panel-heading">
                <b>To:</b> You
              </div>
              <table class="table">
                <tbody>

                  <tr class="resultSubheader">
                    <td>
                      <span class="bold">
                        <b>From:</b>
                      </span> anonymous
                    </td>
                  </tr>
                  <tr>
                    <td class="multiline">No</td>
                  </tr>

                </tbody>
              </table>
            </div>
            <div class="panel panel-primary">
              <div class="panel-heading">
                <b>To:</b> You
              </div>
              <table class="table">
                <tbody>

                  <tr class="resultSubheader">
                    <td>
                      <span class="bold">
                        <b>From:</b>
                      </span> anonymous
                    </td>
                  </tr>
                  <tr>
                    <td class="multiline">Yes</td>
                  </tr>

                </tbody>
              </table>
            </div>

          </div>
        </div>

      </div>
      <br>
      <br>
      <br>
    </li>
    <li id="fbQuestionTypes">
      <span class="text-bold">
          <b>5. Question Types</b>
        </a>
      </span>
      <instructorHelp:roadmapQuestionTypeHelpBody />
      <br>

      <div class="row">
        <div class="col-sm-12">
          <b id="fbEssay">Essay Question</b>
          <br>
          <instructorHelp:essayQuestionTypeHelpBody />
        </div>
      </div>

      <div class="row">
        <div class="col-sm-12">
            <b id="fbMcq">Multiple-choice (single answer) question</b>
          <br>
          <instructorHelp:mcqQuestionTypeHelpBody />
        </div>
      </div>

      <div class="row">
        <div class="col-sm-12">
            <b id="fbMsq">Multiple-choice (multiple answers) question</b>
          <br>
          Multiple-choice (multiple answers) question are similar to the single answer version, except that students are able to select multiple options as their response.
          <br> The setup and result statistics is similar to the single answer version. See
          <a href="#fbMcq">above</a> for details.
        </div>
      </div>
      <br>
      <div class="row">
        <div class="col-sm-12">
            <b id="fbNumscale">Numerical scale question</b>
          <br>
          <instructorHelp:numericalScaleQuestionTypeHelpBody />
        </div>
      </div>

      <div class="row">
        <div class="col-sm-12">
            <b id="fbConstSumOptions">Distribute points (among options) question</b>
          <br>
          <instructorHelp:constSumOptionQuestionTypeHelpBody />
        </div>
      </div>

      <div class="row">
        <div class="col-sm-12">
            <b id="fbConstSumRecipients">Distribute points (among recipients) question</b>
          <br>
          <instructorHelp:constSumRecipientQuestionTypeHelpBody />
        </div>
      </div>

      <div class="row">
        <div class="col-sm-12">
            <b id="fbContrib">Team contribution question</b>
          <br>
          <instructorHelp:teamContribQuestionTypeHelpBody />
        </div>
      </div>

      <div class="row">
        <div class="col-sm-12">
            <b id="fbRubric">Rubric question</b>
          <br>
          <instructorHelp:rubricQuestionTypeHelpBody />
        </div>
      </div>

      <div class="row">
        <div class="col-sm-12">
          <b id="fbRankOptions">Rank Options question</b>
          <br>
          <instructorHelp:rankOptionsQuestionTypeHelpBody />
        </div>
      </div>

      <div class="row">
        <div class="col-sm-12">
            <b id="fbRankRecipients">Rank Recipients question</b>
          <br>
          Rank recipients questions are questions where the students are to rank students, teams, or instructors.
          <br>
          <br> The options to rank are determined by the feedback path selected for the question. You can configure if students can give the same rank multiple times.
          <br>
          <br>
          <div class="bs-example">
            <form class="form-horizontal form_question" role="form" method="post">
              <div class="panel panel-primary questionTable" id="rankRecpientTable">
                <div class="panel-heading">
                  <div class="row">
                    <div class="col-sm-7">
                      <span>
                        <strong>Question</strong>
                        <select class="questionNumber nonDestructive text-primary" name="questionnum" id="questionnum-4" disabled="">

                          <option value="1">
                            1
                          </option>

                        </select>
                        &nbsp;Rank (recipients) question
                      </span>
                    </div>
                    <div class="col-sm-5 mobile-margin-top-10px">
                      <span class="mobile-no-pull pull-right">
                        <a class="btn btn-primary btn-xs" id="questionedittext-4" data-toggle="tooltip" data-placement="top" title="" onclick="enableEdit(4,4)" data-original-title="Edit the existing question. Do remember to save the changes before moving on to editing another question.">
                          <span class="glyphicon glyphicon-pencil"></span> Edit
                        </a>
                        <a class="btn btn-primary btn-xs" style="display:none" id="questionsavechangestext-4">
                          <span class="glyphicon glyphicon-ok"></span> Save
                        </a>
                        <a class="btn btn-primary btn-xs" style="display:none" onclick="discardChanges(4)" id="questiondiscardchanges-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Discard any unsaved edits and revert back to original question.">
                          <span class="glyphicon glyphicon-ban-circle"></span> Discard
                        </a>
                        <a class="btn btn-primary btn-xs" onclick="deleteQuestion(4)" data-toggle="tooltip" data-placement="top" data-original-title="" title="">
                          <span class=" glyphicon glyphicon-trash"></span> Delete
                        </a>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="panel-body">
                  <div class="col-sm-12 margin-bottom-15px background-color-light-blue">
                    <div class="form-group" style="padding: 15px;">
                      <h5 class="col-sm-2">
                        <label class="control-label" for="questiontext-1">
                          Question
                        </label>
                      </h5>
                      <div class="col-sm-10">

                        <textarea class="form-control textvalue nonDestructive" rows="2" name="questiontext" id="questiontext-1" data-toggle="tooltip" data-placement="top" title="" placeholder="A concise version of the question e.g. &quot;How well did the team member communicate?&quot;" tabindex="9" disabled="" data-original-title="Please enter the question for users to give feedback about. e.g. What is the biggest weakness of the presented product?">Rank the teams in your class, based on how much work you think the teams have put in. </textarea>
                      </div>
                    </div>
                    <div class="form-group" style="padding: 0 15px;">
                      <h5 class="col-sm-2">
                        <label class="align-left" for="questiondescription-1">
                          [Optional]<br>Description
                        </label>
                      </h5>
                      <div class="col-sm-10">
                        <div id="rich-text-toolbar-q-descr-container-1"></div>
                        <div class="well panel panel-default panel-body question-description mce-content-body content-editor empty" data-placeholder="More details about the question e.g. &quot;In answering the question, do consider communications made informally within the team, and formal communications with the instructors and tutors.&quot;" id="questiondescription-1" data-toggle="tooltip" data-placement="top" title="" tabindex="9" data-original-title="Please enter the description of the question." spellcheck="false"><p><br data-mce-bogus="1"></p></div><input type="hidden" name="questiondescription-1">
                        <input type="hidden" name="questiondescription" disabled="">
                      </div>
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="checkbox" data-toggle="tooltip" data-placement="top" data-container="body" title="" data-original-title="Ticking this will allow response givers to give the same rank to multiple recipients">
                            <label class="bold-label">
                              <input type="checkbox" name="rankAreDuplicatesAllowed" id="rankAreDuplicatesAllowed-1" disabled="">
                              Allow response giver to give the same rank to multiple options
                            </label>
                          </div>
                        </div>
                        <br>
                      </div>
                    </div>
                  </div>
                  <br>
                  <div class="col-sm-12 padding-15px margin-bottom-15px background-color-light-green">
                    <div class="col-sm-12 padding-0 margin-bottom-7px">
                      <b class="feedback-path-title">Feedback Path</b> (Who is giving feedback about whom?)
                    </div>
                    <div class="feedback-path-dropdown col-sm-12 btn-group">
                      <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" disabled="">Feedback session creator (i.e., me) will give feedback on <span class="glyphicon glyphicon-arrow-right"></span> Nobody specific (For general class feedback)</button>
                      <ul class="dropdown-menu">
                        <li class="dropdown-header">Common feedback path combinations</li>

                        <li class="dropdown-submenu">

                          <a>Feedback session creator (i.e., me) will give feedback on...</a>
                          <ul class="dropdown-menu">
                            <li>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="SELF" data-recipient-type="NONE" data-path-description="Feedback session creator (i.e., me) will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Nobody specific (For general class feedback)">
                                Nobody specific (For general class feedback)
                              </a>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="SELF" data-recipient-type="SELF" data-path-description="Feedback session creator (i.e., me) will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver (Self feedback)">
                                Giver (Self feedback)
                              </a>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="SELF" data-recipient-type="INSTRUCTORS" data-path-description="Feedback session creator (i.e., me) will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Instructors in the course">
                                Instructors in the course
                              </a>

                            </li>
                          </ul>
                        </li>

                        <li class="dropdown-submenu">

                          <a>Students in this course will give feedback on...</a>
                          <ul class="dropdown-menu">
                            <li>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="NONE" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Nobody specific (For general class feedback)">
                                Nobody specific (For general class feedback)
                              </a>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="SELF" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver (Self feedback)">
                                Giver (Self feedback)
                              </a>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="INSTRUCTORS" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Instructors in the course">
                                Instructors in the course
                              </a>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="OWN_TEAM_MEMBERS" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver's team members">
                                Giver's team members
                              </a>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="STUDENTS" data-recipient-type="OWN_TEAM_MEMBERS_INCLUDING_SELF" data-path-description="Students in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver's team members and Giver">
                                Giver's team members and Giver
                              </a>

                            </li>
                          </ul>
                        </li>

                        <li class="dropdown-submenu">

                          <a>Instructors in this course will give feedback on...</a>
                          <ul class="dropdown-menu">
                            <li>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="INSTRUCTORS" data-recipient-type="NONE" data-path-description="Instructors in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Nobody specific (For general class feedback)">
                                Nobody specific (For general class feedback)
                              </a>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="INSTRUCTORS" data-recipient-type="SELF" data-path-description="Instructors in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Giver (Self feedback)">
                                Giver (Self feedback)
                              </a>

                              <a class="feedback-path-dropdown-option" href="javascript:;" data-giver-type="INSTRUCTORS" data-recipient-type="INSTRUCTORS" data-path-description="Instructors in this course will give feedback on <span class='glyphicon glyphicon-arrow-right'></span> Instructors in the course">
                                Instructors in the course
                              </a>

                            </li>
                          </ul>
                        </li>

                        <li role="separator" class="divider"></li>
                        <li><a class="feedback-path-dropdown-option feedback-path-dropdown-option-other" href="javascript:;" data-path-description="Predefined combinations:">Other predefined combinations...</a></li>
                      </ul>
                    </div>
                    <div class="feedback-path-others margin-top-7px" style="display:none;">
                      <div class="col-sm-12 col-lg-6 padding-0 margin-bottom-7px" data-toggle="tooltip" data-placement="top" title="" data-original-title="Who will give feedback">
                        <label class="col-sm-4 col-lg-5 control-label">
                          Who will give the feedback:
                        </label>
                        <div class="col-sm-8 col-lg-7">
                          <select class="form-control participantSelect" id="givertype-1" name="givertype" disabled="" onchange="matchVisibilityOptionToFeedbackPath(this);getVisibilityMessage(this);">

                            <option selected="" value="SELF">
                              Feedback session creator (i.e., me)
                            </option>

                            <option value="STUDENTS">
                              Students in this course
                            </option>

                            <option value="INSTRUCTORS">
                              Instructors in this course
                            </option>

                            <option value="TEAMS">
                              Teams in this course
                            </option>

                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12 col-lg-6 padding-0 margin-bottom-7px" data-toggle="tooltip" data-placement="top" title="" data-original-title="Who the feedback is about">
                        <label class="col-sm-4 col-lg-5 control-label">
                          Who the feedback is about:
                        </label>
                        <div class="col-sm-8 col-lg-7">
                          <select class="form-control participantSelect" id="recipienttype-1" name="recipienttype" disabled="" onchange="matchVisibilityOptionToFeedbackPath(this);getVisibilityMessage(this);">

                            <option value="SELF">
                              Giver (Self feedback)
                            </option>

                            <option value="STUDENTS">
                              Other students in the course
                            </option>

                            <option value="INSTRUCTORS">
                              Instructors in the course
                            </option>

                            <option value="TEAMS">
                              Other teams in the course
                            </option>

                            <option value="OWN_TEAM">
                              Giver's team
                            </option>

                            <option style="display: block;" value="OWN_TEAM_MEMBERS">
                              Giver's team members
                            </option>

                            <option style="display: block;" value="OWN_TEAM_MEMBERS_INCLUDING_SELF">
                              Giver's team members and Giver
                            </option>

                            <option selected="" value="NONE">
                              Nobody specific (For general class feedback)
                            </option>

                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12 row numberOfEntitiesElements" style="display: none;">
                        <label class="control-label col-sm-4 small">
                          The maximum number of <span class="number-of-entities-inner-text">teams</span> each respondent should give feedback to:
                        </label>
                        <div class="col-sm-8 form-control-static">
                          <div class="col-sm-4 col-md-3 col-lg-2 margin-bottom-7px">
                            <input class="nonDestructive" name="numofrecipientstype" value="custom" type="radio">
                            <input class="nonDestructive numberOfEntitiesBox width-75-pc" name="numofrecipients" value="1" min="1" max="250" type="number">
                          </div>
                          <div class="col-sm-4 col-md-3 col-lg-2 margin-bottom-7px">
                            <input class="nonDestructive" name="numofrecipientstype" checked="" value="max" type="radio">
                            <span class="">Unlimited</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <br>
                  <div class="col-sm-12 margin-bottom-15px padding-15px background-color-light-green">
                    <div class="col-sm-12 padding-0 margin-bottom-7px">
                      <b class="visibility-title">Visibility</b> (Who can see the responses?)
                    </div>
                    <div class="visibility-options-dropdown btn-group col-sm-12 margin-bottom-10px">
                      <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" disabled="">Visible to recipient and instructors</button>
                      <ul class="dropdown-menu">
                        <li class="dropdown-header">Common visibility options</li>

                        <li>
                          <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="ANONYMOUS_TO_RECIPIENT_AND_INSTRUCTORS">Shown anonymously to recipient and instructors</a>
                        </li>

                        <li>
                          <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="ANONYMOUS_TO_RECIPIENT_VISIBLE_TO_INSTRUCTORS">Shown anonymously to recipient, visible to instructors</a>
                        </li>

                        <li>
                          <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="VISIBLE_TO_INSTRUCTORS_ONLY">Visible to instructors only</a>
                        </li>

                        <li>
                          <a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="VISIBLE_TO_RECIPIENT_AND_INSTRUCTORS">Visible to recipient and instructors</a>
                        </li>

                        <li role="separator" class="divider"></li>
                        <li><a class="visibility-options-dropdown-option" href="javascript:;" data-option-name="OTHER">Custom visibility options...</a></li>
                      </ul>
                    </div>
                    <div class="visibilityOptions col-sm-12 overflow-hidden" id="visibilityOptions-2" style="display: none;">
                      <table class="dataTable participantTable table table-striped text-center background-color-white margin-bottom-10px">
                        <tbody>
                          <tr>
                            <th class="text-center">User/Group</th>
                            <th class="text-center">Can see answer</th>
                            <th class="text-center">Can see giver's name</th>
                            <th class="text-center">Can see recipient's name</th>
                          </tr>
                          <tr style="display: table-row;">
                            <td class="text-left">
                              <div data-original-title="Control what feedback recipient(s) can view" data-toggle="tooltip" data-placement="top" title="">
                                Recipient(s)
                              </div>
                            </td>
                            <td>
                              <input class="visibilityCheckbox answerCheckbox centered" name="receiverLeaderCheckbox" value="RECEIVER" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox giverCheckbox" value="RECEIVER" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox recipientCheckbox" name="receiverFollowerCheckbox" value="RECEIVER" disabled="" type="checkbox">
                            </td>
                          </tr>
                          <tr style="display: table-row;">
                            <td class="text-left">
                              <div data-original-title="Control what team members of feedback giver can view" data-toggle="tooltip" data-placement="top" title="">
                                Giver's Team Members
                              </div>
                            </td>
                            <td>
                              <input class="visibilityCheckbox answerCheckbox" value="OWN_TEAM_MEMBERS" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox giverCheckbox" value="OWN_TEAM_MEMBERS" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox recipientCheckbox" value="OWN_TEAM_MEMBERS" type="checkbox">
                            </td>
                          </tr>
                          <tr style="display: none;">
                            <td class="text-left">
                              <div data-original-title="Control what team members of feedback recipients can view" data-toggle="tooltip" data-placement="top" title="">
                                Recipient's Team Members
                              </div>
                            </td>
                            <td>
                              <input class="visibilityCheckbox answerCheckbox" value="RECEIVER_TEAM_MEMBERS" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox giverCheckbox" value="RECEIVER_TEAM_MEMBERS" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox recipientCheckbox" value="RECEIVER_TEAM_MEMBERS" type="checkbox">
                            </td>
                          </tr>
                          <tr>
                            <td class="text-left">
                              <div data-original-title="Control what other students can view" data-toggle="tooltip" data-placement="top" title="">
                                Other students
                              </div>
                            </td>
                            <td>
                              <input class="visibilityCheckbox answerCheckbox" value="STUDENTS" checked="" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox giverCheckbox" value="STUDENTS" checked="" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox recipientCheckbox" value="STUDENTS" type="checkbox">
                            </td>
                          </tr>
                          <tr>
                            <td class="text-left">
                              <div data-original-title="Control what instructors can view" data-toggle="tooltip" data-placement="top" title="">
                                Instructors
                              </div>
                            </td>
                            <td>
                              <input class="visibilityCheckbox answerCheckbox" value="INSTRUCTORS" checked="" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox giverCheckbox" value="INSTRUCTORS" checked="" type="checkbox">
                            </td>
                            <td>
                              <input class="visibilityCheckbox recipientCheckbox" value="INSTRUCTORS" checked="" type="checkbox">
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <!-- Fix for collapsing margin problem. Reference: http://stackoverflow.com/questions/6204670 -->
                    <div class="col-sm-12 visibilityMessage overflow-hidden" id="visibilityMessage-2">This is the visibility hint as seen by the feedback giver:<ul class="text-muted background-color-warning"><li>Instructors in this course can see your response, and your name.</li></ul></div>
                  </div>
                  <div>
                    <span class="pull-right">
                      <input id="button_question_submit-4" type="submit" class="btn btn-primary" value="Save Changes" tabindex="0" style="display:none" disabled="">
                    </span>
                  </div>
                </div>
              </div>
              <input type="hidden" name="fsname" value="rankk">
              <input type="hidden" name="courseid" value="instr.ema-demo">
              <input type="hidden" name="questionid" value="ag50ZWFtbWF0ZXMtam9obnIdCxIQRmVlZGJhY2tRdWVzdGlvbhiAgICAgIKPCQw">
              <input type="hidden" name="questionnum" value="4">
              <input type="hidden" name="questiontype" value="RANK_RECIPIENTS">
              <input type="hidden" name="questionedittype" id="questionedittype-4" value="edit">
              <input type="hidden" name="showresponsesto" value="RECEIVER,INSTRUCTORS">
              <input type="hidden" name="showgiverto" value="RECEIVER,INSTRUCTORS">
              <input type="hidden" name="showrecipientto" value="RECEIVER,INSTRUCTORS">
              <input type="hidden" name="user" value="inst@email.com">
            </form>
          </div>

          <br> The statistics for both rank questions show the average rank an option/recipient received. Ties are handled during the computation of statistics. If duplicate ranks are allowed to be given, ties are resolved by assigning the best rank to the occurences of tied values. For example, for the data {1, 3, 3, 4}, the ranks will be converted to {1, 2, 2, 4}.
          <br>
          <br>
          <div class="bs-example">
            <div class="panel-body">
              <div class="row">
                <div class="col-sm-4 text-color-gray">
                  <strong>
                    Response Summary
                  </strong>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <table class="table table-bordered table-responsive margin-0">
                    <thead>
                    <tr>
                      <td class="button-sort-ascending" id="button_sortteamname" onclick="toggleSort(this,1);" style="width: 35%;">Team
                        <span class="icon-sort unsorted"></span></td>
                      <td class="button-sort-none" onclick="toggleSort(this,2);">Recipient
                        <span class="icon-sort unsorted"></span></td>
                      <td class="button-sort-none" id="button_sortname" style="width:15%;">Ranks Received
                        <span class="icon-sort unsorted"></span></td>
                      <td class="button-sort-none" id="button_sortclaimed" style="width:15%;">Average Rank
                        <span class="icon-sort unsorted"></span></td>
                    </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          -
                        </td>
                        <td>
                          Team 1
                        </td>
                        <td>
                          1 , 1 , 2
                        </td>
                        <td>
                          1.33
                        </td>
                      </tr>
                      <tr>
                        <td>
                          -
                        </td>
                        <td>
                          Team 2
                        </td>
                        <td>
                          1 , 2
                        </td>
                        <td>
                          1.5
                        </td>
                      </tr>
                      <tr>
                        <td>
                          -
                        </td>
                        <td>
                          Team 3
                        </td>
                        <td>
                          1 , 2
                        </td>
                        <td>
                          1.5
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>

          </div>
        </div>

      </div>
    </li>
  </ol>
  <p align="right">
    <a href="#Top">Back to Top</a>
  </p>
  <div class="separate-content-holder">
    <hr>
  </div>
</div>
