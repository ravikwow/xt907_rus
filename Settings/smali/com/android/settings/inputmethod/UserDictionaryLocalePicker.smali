.class public Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "UserDictionaryLocalePicker.java"


# instance fields
.field private emptyConstructor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    iget-boolean v1, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 46
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    .line 49
    .end local v0    # "fm":Landroid/app/FragmentManager;
    :cond_0
    return-void
.end method
