class User < ApplicationRecord
    after_initialize :init

    has_secure_password

    VALID_EMAIL_REGEX= /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

    ROLES = {
      student: 'STUDENT',
      teacher: 'TEACHER',
    }

    validates :email, presence: true, uniqueness: {case_sensetive:false}, format: {with: VALID_EMAIL_REGEX, multiline: true}
    validates :ROLE, inclusion: { in: ROLES.values }, allow_nil: false

    private def init
        first_name ||= ''
        last_name ||= ''
        address ||= ''
        city ||= ''
      end
end
