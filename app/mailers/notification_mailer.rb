class ApplicationMailer < ActionMailer::Base
  def create
    @notification = Notification.new(notification_params)
    respond_to do |format|
      if @notification.save
  
        # ContactMailerのcontact_mailメソッドを呼び出す
        NotificationMailer.notification_mail(@notification).deliver
  
        format.html { redirect_to @notification, notice: '正常に送信されました。' }
        format.json { render :show, status: :created, location: @notification }
      else
        format.html { render :new }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end
  end
end