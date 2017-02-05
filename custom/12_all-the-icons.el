(defun custom-modeline-suntime ()
  (if (and (boundp 'yahoo-weather-info) yahoo-weather-mode)
      (concat
         (format "%s "(yahoo-weather-info-format yahoo-weather-info "%(sunrise-time)"))
         (format "%s  " (all-the-icons-wicon "sunrise" :height 0.5 :v-adjust -0.1)) 
         (format "%s "(yahoo-weather-info-format yahoo-weather-info "%(sunset-time)")) 
         (format "%s "(all-the-icons-wicon "sunset" :height 0.5 :v-adjust -0.1)))
    ""))

(defun custom-modeline-weather ()
  (if (and (boundp 'yahoo-weather-info) yahoo-weather-mode)
      (let* ((weather (yahoo-weather-info-format yahoo-weather-info format))
             (icon (all-the-icons-icon-for-weather (downcase weather)))
             (family (if (> (length icon) 2)
                         (face-attribute 'default :family)
                       (all-the-icons-wicon-family))))
        (propertize (format " %s " icon)
                    'help-echo weather
                    'face `(:height 1.0 :family ,family)
                    'display '(raise 0.1)))
  ""))

(defun custom-modeline-mode-icon ()
  (format " %s"
    (propertize icon
                'help-echo (format "Major-mode: `%s`" major-mode)
                'face `(:height 1.2 :family ,(all-the-icons-icon-family-for-buffer)))))
