.class Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V
    .locals 0
    .param p2, "resId"    # I

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V
    .locals 1
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const v0, 0x7f07000d

    iput v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 168
    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$002(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->mResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 175
    :cond_0
    return-void
.end method
