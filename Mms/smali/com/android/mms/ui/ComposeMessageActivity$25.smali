.class Lcom/android/mms/ui/ComposeMessageActivity$25;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2749
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->resetMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 2753
    return-void
.end method
