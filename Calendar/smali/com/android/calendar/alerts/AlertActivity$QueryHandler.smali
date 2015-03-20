.class Lcom/android/calendar/alerts/AlertActivity$QueryHandler;
.super Lcom/android/calendar/AsyncQueryService;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    .line 108
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 128
    if-eqz p3, :cond_0

    move-object v0, p2

    .line 129
    check-cast v0, Ljava/lang/Long;

    .line 131
    .local v0, "alarmTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/alerts/AlertUtils;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 138
    .end local v0    # "alarmTime":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    # setter for: Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/calendar/alerts/AlertActivity;->access$002(Lcom/android/calendar/alerts/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 116
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    # getter for: Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$100(Lcom/android/calendar/alerts/AlertActivity;)Lcom/android/calendar/alerts/AlertAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 117
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    # getter for: Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$200(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 120
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    # getter for: Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->access$300(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 143
    return-void
.end method
