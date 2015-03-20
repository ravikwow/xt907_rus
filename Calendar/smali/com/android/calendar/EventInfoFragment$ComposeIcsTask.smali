.class Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;
.super Landroid/os/AsyncTask;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeIcsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIcsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1255
    iput-object p2, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mContext:Landroid/content/Context;

    .line 1256
    return-void
.end method

.method private showToast(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 1307
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1308
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Long;

    .prologue
    const/4 v8, 0x0

    .line 1260
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$3300(Lcom/android/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$3300(Lcom/android/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1261
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1277
    :goto_0
    return-object v1

    .line 1264
    :cond_0
    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1265
    .local v2, "eventId":J
    new-instance v0, Lcom/motorola/calendarcommon/vcal/VCalUtils;

    invoke-direct {v0}, Lcom/motorola/calendarcommon/vcal/VCalUtils;-><init>()V

    .line 1266
    .local v0, "vcalUtils":Lcom/motorola/calendarcommon/vcal/VCalUtils;
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invite_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".ics"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/calendarcommon/vcal/VCalUtils;->exportEventToSDCard(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1267
    .local v6, "result":I
    if-gez v6, :cond_1

    .line 1268
    const-string v1, "ComposeIcsTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save ics file, eventId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 1272
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/calendarcommon/vcal/VCalUtils;->getSavedFileUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mIcsUri:Landroid/net/Uri;

    .line 1273
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mIcsUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 1274
    const-string v1, "ComposeIcsTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The saved ics file path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mIcsUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1249
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$3300(Lcom/android/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$3300(Lcom/android/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1287
    .local v0, "error":I
    if-gez v0, :cond_0

    .line 1288
    packed-switch v0, :pswitch_data_0

    .line 1297
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00bc

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1290
    :pswitch_0
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00ba

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1293
    :pswitch_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00bb

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1288
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1249
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoFragment$ComposeIcsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
