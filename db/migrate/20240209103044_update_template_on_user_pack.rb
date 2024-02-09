class UpdateTemplateOnUserPack < ActiveRecord::Migration[6.1]
  def up
    NotificationTemplate.reset_column_information

    upsert({
             "body": "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional //EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\">\n<head>\n<!--[if gte mso 9]>\n<xml>\n  <o:OfficeDocumentSettings>\n    <o:AllowPNG/>\n    <o:PixelsPerInch>96</o:PixelsPerInch>\n  </o:OfficeDocumentSettings>\n</xml>\n<![endif]-->\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <meta name=\"x-apple-disable-message-reformatting\">\n  <!--[if !mso]><!--><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"><!--<![endif]-->\n  <title></title>\n  \n    <style type=\"text/css\">\n      @media only screen and (min-width: 520px) {\n  .u-row {\n    width: 500px !important;\n  }\n  .u-row .u-col {\n    vertical-align: top;\n  }\n\n  .u-row .u-col-100 {\n    width: 500px !important;\n  }\n\n}\n\n@media (max-width: 520px) {\n  .u-row-container {\n    max-width: 100% !important;\n    padding-left: 0px !important;\n    padding-right: 0px !important;\n  }\n  .u-row .u-col {\n    min-width: 320px !important;\n    max-width: 100% !important;\n    display: block !important;\n  }\n  .u-row {\n    width: 100% !important;\n  }\n  .u-col {\n    width: 100% !important;\n  }\n  .u-col > div {\n    margin: 0 auto;\n  }\n}\nbody {\n  margin: 0;\n  padding: 0;\n}\n\ntable,\ntr,\ntd {\n  vertical-align: top;\n  border-collapse: collapse;\n}\n\np {\n  margin: 0;\n}\n\n.ie-container table,\n.mso-container table {\n  table-layout: fixed;\n}\n\n* {\n  line-height: inherit;\n}\n\na[x-apple-data-detectors='true'] {\n  color: inherit !important;\n  text-decoration: none !important;\n}\n\ntable, td { color: #000000; } </style>\n  \n  \n\n</head>\n\n<body class=\"clean-body u_body\" style=\"margin: 0;padding: 0;-webkit-text-size-adjust: 100%;background-color: #e7e7e7;color: #000000\">\n  <!--[if IE]><div class=\"ie-container\"><![endif]-->\n  <!--[if mso]><div class=\"mso-container\"><![endif]-->\n  <table style=\"border-collapse: collapse;table-layout: fixed;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;vertical-align: top;min-width: 320px;Margin: 0 auto;background-color: #e7e7e7;width:100%\" cellpadding=\"0\" cellspacing=\"0\">\n  <tbody>\n  <tr style=\"vertical-align: top\">\n    <td style=\"word-break: break-word;border-collapse: collapse !important;vertical-align: top\">\n    <!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td align=\"center\" style=\"background-color: #e7e7e7;\"><![endif]-->\n    \n  \n  \n<div class=\"u-row-container\" style=\"padding: 0px;background-color: transparent\">\n  <div class=\"u-row\" style=\"margin: 0 auto;min-width: 320px;max-width: 500px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: #ffffff;\">\n    <div style=\"border-collapse: collapse;display: table;width: 100%;height: 100%;background-color: transparent;\">\n      <!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:500px;\"><tr style=\"background-color: #ffffff;\"><![endif]-->\n      \n<!--[if (mso)|(IE)]><td align=\"center\" width=\"500\" style=\"width: 500px;padding: 20px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\n<div class=\"u-col u-col-100\" style=\"max-width: 320px;min-width: 500px;display: table-cell;vertical-align: top;\">\n  <div style=\"height: 100%;width: 100% !important;\">\n  <!--[if (!mso)&(!IE)]><!--><div style=\"box-sizing: border-box; height: 100%; padding: 20px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\"><!--<![endif]-->\n  \n<table style=\"font-family:arial,helvetica,sans-serif;\" role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n  <tbody>\n    <tr>\n      <td style=\"overflow-wrap:break-word;word-break:break-word;padding:10px;font-family:arial,helvetica,sans-serif;\" align=\"left\">\n        \n  <!--[if mso]><table width=\"100%\"><tr><td><![endif]-->\n    <h3 style=\"margin: 0px; line-height: 140%; text-align: center; word-wrap: break-word; font-size: 18px; font-weight: 400;\">Bonjour,</h3>\n  <!--[if mso]></td></tr></table><![endif]-->\n\n      </td>\n    </tr>\n  </tbody>\n</table>\n\n<table style=\"font-family:arial,helvetica,sans-serif;\" role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n  <tbody>\n    <tr>\n      <td style=\"overflow-wrap:break-word;word-break:break-word;padding:10px;font-family:arial,helvetica,sans-serif;\" align=\"left\">\n        \n  <div style=\"font-size: 16px; line-height: 250%; text-align: center; word-wrap: break-word;\">\n    <p style=\"line-height: 250%;\">L’élève {{first_name}} {{last_name}} a annulé le cours {{activity.label}} ({{activity.teacher_first_name}} {{activity.teacher_last_name}}) du {{activity.startDate}} à {{activity.activity_start}}. </p>\n  </div>\n\n      </td>\n    </tr>\n  </tbody>\n</table>\n\n<table style=\"font-family:arial,helvetica,sans-serif;\" role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n  <tbody>\n    <tr>\n      <td style=\"overflow-wrap:break-word;word-break:break-word;padding:10px;font-family:arial,helvetica,sans-serif;\" align=\"left\">\n        \n  <div style=\"font-size: 16px; line-height: 140%; text-align: center; word-wrap: break-word;\">\n    <p style=\"line-height: 140%;\">{{school_link}}</p>\n  </div>\n\n      </td>\n    </tr>\n  </tbody>\n</table>\n\n  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->\n  </div>\n</div>\n<!--[if (mso)|(IE)]></td><![endif]-->\n      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->\n    </div>\n  </div>\n  </div>\n  \n\n\n    <!--[if (mso)|(IE)]></td></tr></table><![endif]-->\n    </td>\n  </tr>\n  </tbody>\n  </table>\n  <!--[if mso]></div><![endif]-->\n  <!--[if IE]></div><![endif]-->\n</body>\n\n</html>\n",
             "path": "user_cancelled_attendance_mailer/cancelled_attendance",
             "locale": nil,
             "handler": "liquid",
             "partial": false,
             "format": "html",
             "created_at": "2023-10-23 13:06:28.000000",
             "updated_at": "2024-02-09 10:29:33.341541",
             "name": "Confirmation annulation de cours (Utilisateur)",
             "json": "{\"counters\":{\"u_column\":1,\"u_row\":1,\"u_content_heading\":1,\"u_content_text\":7,\"u_content_button\":1},\"body\":{\"id\":\"dJ8ZsnjcLr\",\"rows\":[{\"id\":\"J_gdJXVDBK\",\"cells\":[1],\"columns\":[{\"id\":\"gA3jy7m4bu\",\"contents\":[{\"id\":\"XWNzfmrFLN\",\"type\":\"heading\",\"values\":{\"containerPadding\":\"10px\",\"anchor\":\"\",\"headingType\":\"h3\",\"fontSize\":\"18px\",\"textAlign\":\"center\",\"lineHeight\":\"140%\",\"linkStyle\":{\"inherit\":true,\"linkColor\":\"#0000ee\",\"linkHoverColor\":\"#0000ee\",\"linkUnderline\":true,\"linkHoverUnderline\":true},\"hideDesktop\":false,\"displayCondition\":null,\"_meta\":{\"htmlID\":\"u_content_heading_1\",\"htmlClassNames\":\"u_content_heading\"},\"selectable\":true,\"draggable\":true,\"duplicatable\":true,\"deletable\":true,\"hideable\":true,\"text\":\"Bonjour,\"}},{\"id\":\"ZhGenL4StX\",\"type\":\"text\",\"values\":{\"containerPadding\":\"10px\",\"anchor\":\"\",\"fontSize\":\"16px\",\"textAlign\":\"center\",\"lineHeight\":\"250%\",\"linkStyle\":{\"inherit\":true,\"linkColor\":\"#0000ee\",\"linkHoverColor\":\"#0000ee\",\"linkUnderline\":true,\"linkHoverUnderline\":true},\"hideDesktop\":false,\"displayCondition\":null,\"_meta\":{\"htmlID\":\"u_content_text_1\",\"htmlClassNames\":\"u_content_text\"},\"selectable\":true,\"draggable\":true,\"duplicatable\":true,\"deletable\":true,\"hideable\":true,\"text\":\"\\u003cp style=\\\"line-height: 250%;\\\"\\u003eL’élève {{first_name}} {{last_name}} a annulé le cours {{activity.label}} ({{activity.teacher_first_name}} {{activity.teacher_last_name}}) du {{activity.startDate}} à {{activity.activity_start}}. \\u003c/p\\u003e\"}},{\"id\":\"LL3duM7l13\",\"type\":\"text\",\"values\":{\"containerPadding\":\"10px\",\"anchor\":\"\",\"fontSize\":\"16px\",\"textAlign\":\"center\",\"lineHeight\":\"140%\",\"linkStyle\":{\"inherit\":true,\"linkColor\":\"#0000ee\",\"linkHoverColor\":\"#0000ee\",\"linkUnderline\":true,\"linkHoverUnderline\":true},\"displayCondition\":null,\"_meta\":{\"htmlID\":\"u_content_text_7\",\"htmlClassNames\":\"u_content_text\"},\"selectable\":true,\"draggable\":true,\"duplicatable\":true,\"deletable\":true,\"hideable\":true,\"text\":\"\\u003cp style=\\\"line-height: 140%;\\\"\\u003e{{school_link}}\\u003c/p\\u003e\"}}],\"values\":{\"backgroundColor\":\"\",\"padding\":\"20px\",\"border\":{},\"_meta\":{\"htmlID\":\"u_column_1\",\"htmlClassNames\":\"u_column\"}}}],\"values\":{\"displayCondition\":null,\"columns\":false,\"backgroundColor\":\"\",\"columnsBackgroundColor\":\"#ffffff\",\"backgroundImage\":{\"url\":\"\",\"fullWidth\":true,\"repeat\":\"no-repeat\",\"size\":\"custom\",\"position\":\"center\"},\"padding\":\"0px\",\"anchor\":\"\",\"hideDesktop\":false,\"_meta\":{\"htmlID\":\"u_row_1\",\"htmlClassNames\":\"u_row\"},\"selectable\":true,\"draggable\":true,\"duplicatable\":true,\"deletable\":true,\"hideable\":true}}],\"headers\":[],\"footers\":[],\"values\":{\"popupPosition\":\"center\",\"popupWidth\":\"600px\",\"popupHeight\":\"auto\",\"borderRadius\":\"10px\",\"contentAlign\":\"center\",\"contentVerticalAlign\":\"center\",\"contentWidth\":\"500px\",\"fontFamily\":{\"label\":\"Arial\",\"value\":\"arial,helvetica,sans-serif\"},\"textColor\":\"#000000\",\"popupBackgroundColor\":\"#FFFFFF\",\"popupBackgroundImage\":{\"url\":\"\",\"fullWidth\":true,\"repeat\":\"no-repeat\",\"size\":\"cover\",\"position\":\"center\"},\"popupOverlay_backgroundColor\":\"rgba(0, 0, 0, 0.1)\",\"popupCloseButton_position\":\"top-right\",\"popupCloseButton_backgroundColor\":\"#DDDDDD\",\"popupCloseButton_iconColor\":\"#000000\",\"popupCloseButton_borderRadius\":\"0px\",\"popupCloseButton_margin\":\"0px\",\"popupCloseButton_action\":{\"name\":\"close_popup\",\"attrs\":{\"onClick\":\"document.querySelector('.u-popup-container').style.display = 'none';\"}},\"backgroundColor\":\"#e7e7e7\",\"preheaderText\":\"\",\"linkStyle\":{\"body\":true,\"linkColor\":\"#0000ee\",\"linkHoverColor\":\"#0000ee\",\"linkUnderline\":true,\"linkHoverUnderline\":true},\"backgroundImage\":{\"url\":\"\",\"fullWidth\":true,\"repeat\":\"no-repeat\",\"size\":\"custom\",\"position\":\"center\"},\"_meta\":{\"htmlID\":\"u_body\",\"htmlClassNames\":\"u_body\"}}},\"schemaVersion\":16}"
           }
    )
  end

  def down
  end

  def upsert(data)
    notification_template = NotificationTemplate.find_or_initialize_by(
      {
        "path": data[:path]
      })

    notification_template.assign_attributes({
                                              "body": data[:body],
                                              "locale": data[:locale],
                                              "handler": data[:handler],
                                              "partial": data[:partial],
                                              "format": data[:format],
                                              "created_at": data[:created_at],
                                              "updated_at": data[:updated_at],
                                              "name": data[:name],
                                              "json": data[:json],
                                            }
    )

    notification_template.save!
  end
end
