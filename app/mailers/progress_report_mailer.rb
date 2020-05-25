class ProgressReportMailer < ApplicationMailer
    
    ## this method is called from the Progress Report controller when progress reports are ready for distro.
    default from: 'ty18881@yahoo.com'
    def new_report(parent, report)
        @parent = parent
        @report = report

        ## this actually creates the mail message by rendering the corresponding template.
        mail(to: @parent.email, subject: "Gaming Time - New Progress Report")
    end
end
