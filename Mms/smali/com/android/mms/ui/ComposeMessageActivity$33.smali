.class Lcom/android/mms/ui/ComposeMessageActivity$33;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->addMedia(Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mediaCallback:Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;)V
    .locals 0

    .prologue
    .line 3495
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->val$mediaCallback:Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3498
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->val$mediaCallback:Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;->onPreExecute()V

    .line 3501
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateUIForAddingMedia(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 3502
    return-void
.end method
