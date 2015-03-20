.class Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;
.super Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardIcsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    .line 1209
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    .line 1210
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Long;

    .prologue
    .line 1214
    invoke-super {p0, p1}, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1205
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x0

    .line 1219
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1220
    .local v9, "str":Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1221
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1222
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$4800(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1224
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->prepareMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, "messageBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mIcsUri:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/calendar/EventInfoFragment;->access$4900(Lcom/android/calendar/EventInfoFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mCalendarId:J
    invoke-static {v5}, Lcom/android/calendar/EventInfoFragment;->access$5000(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v5

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/android/calendar/Utils;->mailEventIcs(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1227
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1205
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
