.class public Lcom/android/mms/ui/ChipsRecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "ChipsRecipientAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/16 v1, 0xa

    invoke-static {}, Lcom/android/mms/MmsConfig;->getShowEmailInAutocompleteList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 34
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getItemLayout()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f040016

    return v0
.end method
