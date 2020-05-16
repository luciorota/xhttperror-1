<form action="reports.php" method="post" id="reportform">
    <table>
        <tr>
            <th colspan="9"><{$smarty.const._AM_XHTTPERR_REPORTS}></th>
        </tr>
        <tr>
            <th><{$smarty.const._AM_XHTTPERR_REPORT_ID}></th>
            <th><{$smarty.const._AM_XHTTPERR_REPORT_USER}></th>
            <th><{$smarty.const._AM_XHTTPERR_REPORT_STATUSCODE}></th>
            <th><{$smarty.const._AM_XHTTPERR_REPORT_DATE}></th>
            <th><{$smarty.const._AM_XHTTPERR_REPORT_REFERER}></th>
            <th><{$smarty.const._AM_XHTTPERR_REPORT_USERAGENT}></th>
            <th><{$smarty.const._AM_XHTTPERR_REPORT_REMOTEADDR}></th>
            <th><{$smarty.const._AM_XHTTPERR_REPORT_REQUESTEDURI}></th>
            <th><{$smarty.const._AM_XHTTPERR_ACTION}></th>
        </tr>
        <{foreach from=$reports item='report'}>
            <tr class="<{cycle values='odd, even'}>">
                <td class="center"><{$report.report_id}></td>
                <td><{$report.report_user}></td>
                <td class="center"><{$report.report_statuscode}></td>
                <td><{$report.report_date}></td>
                <td><{$report.report_referer}></td>
                <td><{$report.report_useragent}></td>
                <td><{$report.report_remoteaddr}></td>
                <td><{$report.report_requesteduri}></td>
                <td class="center">
                    <a href="reports.php?op=delete_report&amp;report_id=<{$report.report_id}>"
                       title="<{$smarty.const._DELETE}>"><img src="<{xoModuleIcons16 delete.png}>" alt="<{$smarty.const._DELETE}>"></a>
                </td>
            </tr>
        <{/foreach}>
    </table>
</form>
