.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mMessageItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p2, "messageItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 714
    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 718
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 720
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 749
    return-void
.end method
