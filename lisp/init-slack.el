;;;;
;; Module responsible for configuring and starting the Slack client.
;; It expects a file named .slackrc.el in your home folder.
;; This file must declare the following variables: my-slack-client-id, my-slack-client-secret, my-slack-token, my-slack-team and my-slack-subscribed-channels.
;;For a detailed explanation about how to obtain the Slack's credentials for accessing the Slack API, take a look at https://github.com/yuya373/emacs-slack.
;;;;

(when (file-exists-p "~/.slackrc.el")

  (load-file "~/.slackrc.el")

  (use-package slack
    :ensure t
    :init
    (setq slack-buffer-emojify  t)
    (setq slack-prefer-current-team t)
    :config
    (slack-register-team
     :name my-slack-team
     :default t
     :client-id my-slack-client-id
     :client-secret my-slack-client-secret
     :token my-slack-token
     :subscribed-channels my-slack-subscribed-channels))

  (use-package alert
    :ensure t
    :init
    (setq alert-default-style 'message)))

(provide 'init-slack)
