$('.workouts.find_offering').ready ->
  $('.course-offering').on 'click', ->
    course_offering_id = $(this).data 'course-offering-id'
    practice_url = $(this).data 'practice-url'
    enroll_url = '/course_offerings/' + course_offering_id + '/enroll'
    $.ajax
      url: enroll_url
      type: 'post'
      dataType: 'json'
      data: { iframe: true }
      success: (data)->
        document.location.href = practice_url
