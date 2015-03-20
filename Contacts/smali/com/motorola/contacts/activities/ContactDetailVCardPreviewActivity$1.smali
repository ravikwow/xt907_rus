.class Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;
.super Ljava/lang/Object;
.source "ContactDetailVCardPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 239
    const/4 v0, 0x4

    if-ne v0, p2, :cond_1

    .line 240
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # invokes: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$100(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V

    .line 241
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    # invokes: Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->cancelVCardParseTask()V
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;->access$200(Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;)V

    .line 242
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailVCardPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 245
    :cond_0
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
