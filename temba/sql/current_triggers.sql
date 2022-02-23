-- Generated by collect_sql on 2022-02-23 21:17 UTC

CREATE TRIGGER temba_broadcast_on_change_trg
  AFTER INSERT OR UPDATE OR DELETE ON msgs_broadcast
  FOR EACH ROW EXECUTE PROCEDURE temba_broadcast_on_change();

CREATE TRIGGER temba_channelevent_on_change_trg
  AFTER INSERT OR UPDATE OR DELETE ON channels_channelevent
  FOR EACH ROW EXECUTE PROCEDURE temba_channelevent_on_change();

CREATE TRIGGER temba_channellog_update_channelcount
   AFTER INSERT OR DELETE OR UPDATE OF is_error, channel_id
   ON channels_channellog
   FOR EACH ROW
   EXECUTE PROCEDURE temba_update_channellog_count();

CREATE TRIGGER temba_flowrun_delete
    AFTER DELETE ON flows_flowrun
    FOR EACH ROW EXECUTE PROCEDURE temba_flowrun_delete();

CREATE TRIGGER temba_flowrun_insert
    AFTER INSERT ON flows_flowrun
    FOR EACH ROW EXECUTE PROCEDURE temba_flowrun_insert();

CREATE TRIGGER temba_flowrun_path_change
    AFTER UPDATE OF path, status ON flows_flowrun
    FOR EACH ROW EXECUTE PROCEDURE temba_flowrun_path_change();

CREATE TRIGGER temba_flowrun_status_change
    AFTER UPDATE OF status ON flows_flowrun
    FOR EACH ROW EXECUTE PROCEDURE temba_flowrun_status_change();

CREATE TRIGGER temba_flowrun_update_flowcategorycount
    AFTER INSERT OR UPDATE OF results ON flows_flowrun
    FOR EACH ROW EXECUTE PROCEDURE temba_update_flowcategorycount();

CREATE TRIGGER temba_msg_labels_on_change_trg
   AFTER INSERT OR DELETE ON msgs_msg_labels
   FOR EACH ROW EXECUTE PROCEDURE temba_msg_labels_on_change();

CREATE TRIGGER temba_msg_on_change_trg
  AFTER INSERT OR UPDATE OR DELETE ON msgs_msg
  FOR EACH ROW EXECUTE PROCEDURE temba_msg_on_change();

CREATE TRIGGER temba_msg_update_channelcount
   AFTER INSERT OR DELETE OR UPDATE OF direction, msg_type, created_on
   ON msgs_msg
   FOR EACH ROW
   EXECUTE PROCEDURE temba_update_channelcount();

CREATE TRIGGER temba_notifications_update_notificationcount
  AFTER INSERT OR UPDATE OF is_seen OR DELETE
  ON notifications_notification
  FOR EACH ROW EXECUTE PROCEDURE temba_notification_on_change();

CREATE TRIGGER temba_ticket_on_change_trg
  AFTER INSERT OR UPDATE OR DELETE ON tickets_ticket
  FOR EACH ROW EXECUTE PROCEDURE temba_ticket_on_change();

CREATE TRIGGER temba_when_debit_update_then_update_topupcredits_for_debit
   AFTER INSERT OR DELETE OR UPDATE OF topup_id
   ON orgs_debit
   FOR EACH ROW
   EXECUTE PROCEDURE temba_update_topupcredits_for_debit();

CREATE TRIGGER temba_when_msgs_update_then_update_topupcredits
   AFTER INSERT OR DELETE OR UPDATE OF topup_id
   ON msgs_msg
   FOR EACH ROW
   EXECUTE PROCEDURE temba_update_topupcredits();

CREATE TRIGGER when_contact_groups_changed_then_update_count_trg
   AFTER INSERT OR DELETE ON contacts_contactgroup_contacts
   FOR EACH ROW EXECUTE PROCEDURE update_group_count();

CREATE TRIGGER when_contacts_changed_then_update_groups_trg
   AFTER INSERT OR UPDATE ON contacts_contact
   FOR EACH ROW EXECUTE PROCEDURE update_contact_system_groups();

