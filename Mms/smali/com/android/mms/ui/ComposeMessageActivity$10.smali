.class Lcom/android/mms/ui/ComposeMessageActivity$10;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showGroupMessageWarningDialog()V
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
    .line 911
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 914
    if-eqz p2, :cond_0

    .line 915
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->setShowMessageGroupTypeWarning(Z)V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->setShowMessageGroupTypeWarning(Z)V

    goto :goto_0
.end method
