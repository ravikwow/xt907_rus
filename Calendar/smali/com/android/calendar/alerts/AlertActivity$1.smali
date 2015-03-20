.class Lcom/android/calendar/alerts/AlertActivity$1;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/AlertActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v7, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    .line 154
    invoke-virtual {v7, p2}, Lcom/android/calendar/alerts/AlertActivity;->getItemForView(Landroid/view/View;)Landroid/database/Cursor;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    # invokes: Lcom/android/calendar/alerts/AlertActivity;->dismissAlarm(J)V
    invoke-static {v1, v2, v3}, Lcom/android/calendar/alerts/AlertActivity;->access$400(Lcom/android/calendar/alerts/AlertActivity;J)V

    .line 161
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 162
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 163
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 164
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/alerts/AlertUtils;->buildEventViewIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity$1;->this$0:Lcom/android/calendar/alerts/AlertActivity;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    const-class v2, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v1, v2}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 171
    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 172
    return-void
.end method
