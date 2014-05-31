.class public Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "UserDictionaryLocalePicker.java"


# instance fields
.field private emptyConstructor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    iget-boolean v1, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 45
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->emptyConstructor:Z

    .line 48
    .end local v0    # "fm":Landroid/app/FragmentManager;
    :cond_0
    return-void
.end method
