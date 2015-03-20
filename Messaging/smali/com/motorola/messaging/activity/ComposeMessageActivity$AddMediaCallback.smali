.class Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddMediaCallback"
.end annotation


# instance fields
.field protected mMediaType:I

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V
    .locals 0
    .param p2, "mediaType"    # I

    .prologue
    .line 789
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->mMediaType:I

    .line 791
    return-void
.end method

.method private getResourceFromMediaType()I
    .locals 2

    .prologue
    .line 814
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->mMediaType:I

    packed-switch v0, :pswitch_data_0

    .line 828
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown media type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :pswitch_1
    const v0, 0x7f0b00ef

    .line 826
    :goto_0
    return v0

    .line 818
    :pswitch_2
    const v0, 0x7f0b00f0

    goto :goto_0

    .line 820
    :pswitch_3
    const v0, 0x7f0b00ee

    goto :goto_0

    .line 822
    :pswitch_4
    const v0, 0x7f0b0172

    goto :goto_0

    .line 824
    :pswitch_5
    const v0, 0x7f0b0174

    goto :goto_0

    .line 826
    :pswitch_6
    const v0, 0x7f0b0173

    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getMediaType()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->mMediaType:I

    return v0
.end method

.method public onPostExecute(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 804
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddMediaCallback - onPostExecute() - media type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->mMediaType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateUIForAddingMedia(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 810
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->getResourceFromMediaType()I

    move-result v1

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->showErrorDialogIfNeeded(II)V
    invoke-static {v0, p1, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2100(Lcom/motorola/messaging/activity/ComposeMessageActivity;II)V

    .line 811
    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 798
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    const-string v0, "ComposeMsgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddMediaCallback - onPreExecute() - media type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->mMediaType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :cond_0
    return-void
.end method
