.class public Lcom/android/systemui/statusbar/RotationToggle;
.super Landroid/widget/CompoundButton;
.source "RotationToggle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;


# instance fields
.field private mRotater:Lcom/android/systemui/statusbar/policy/AutoRotateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/policy/AutoRotateController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RotationToggle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RotationToggle;->mRotater:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    .line 29
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/RotationToggle;->mRotater:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/RotationToggle;->mRotater:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->release()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/RotationToggle;->mRotater:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    .line 38
    :cond_0
    return-void
.end method

.method public setRotationLockControlVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 42
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/RotationToggle;->setVisibility(I)V

    .line 43
    return-void

    .line 42
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
