.class public Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;
.super Landroid/widget/RelativeLayout;
.source "ContactsListAdapter.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/ContactsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckedListItem"
.end annotation


# instance fields
.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;->mIsChecked:Z

    .line 225
    return-void
.end method


# virtual methods
.method getContactId()I
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;

    iget v0, v0, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;->mId:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;->mIsChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 242
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 244
    iput-boolean p1, p0, Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;->mIsChecked:Z

    .line 245
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;->setChecked(Z)V

    .line 254
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
