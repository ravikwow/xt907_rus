.class Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;
.super Landroid/preference/Preference;
.source "BuaMemoryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mButtonId:I

.field private mOnBindViewListener:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;

.field private mOnButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 320
    return-void
.end method


# virtual methods
.method public getButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 344
    iget v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mButtonId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mButton:Landroid/widget/Button;

    .line 345
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mOnButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mOnButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mOnBindViewListener:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mOnBindViewListener:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;

    invoke-interface {v0, p1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;->onBindView(Landroid/view/View;)V

    .line 351
    :cond_1
    return-void
.end method

.method public setButtonResId(I)V
    .locals 0
    .param p1, "buttonId"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mButtonId:I

    .line 324
    return-void
.end method

.method public setOnBindViewListener(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mOnBindViewListener:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference$OnBindViewListener;

    .line 339
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mOnButtonClickListener:Landroid/view/View$OnClickListener;

    .line 332
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$ButtonPreference;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_0
    return-void
.end method
