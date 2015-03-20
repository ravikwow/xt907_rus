.class Lcom/android/calendar/EventInfoFragment$ShareIcsTask;
.super Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareIcsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$ShareIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    .line 1234
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    .line 1235
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Long;

    .prologue
    .line 1239
    invoke-super {p0, p1}, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1230
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoFragment$ShareIcsTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1244
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ShareIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v1}, Lcom/android/calendar/EventInfoFragment;->prepareMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, "messageBody":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mIcsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment$ShareIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/EventInfoFragment;->access$4800(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/calendar/Utils;->shareIcs(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1230
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoFragment$ShareIcsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
