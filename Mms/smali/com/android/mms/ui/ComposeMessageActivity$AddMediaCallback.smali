.class Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddMediaCallback"
.end annotation


# instance fields
.field protected mMediaType:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p2, "mediaType"    # I

    .prologue
    .line 3529
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3530
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;->mMediaType:I

    .line 3531
    return-void
.end method


# virtual methods
.method public getMediaType()I
    .locals 1

    .prologue
    .line 3534
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;->mMediaType:I

    return v0
.end method

.method public onPostExecute(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateUIForAddingMedia(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 3548
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 3541
    return-void
.end method
