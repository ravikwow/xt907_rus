.class public Lcom/motorola/messaging/util/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideSoftInputFromWindow(Landroid/view/Window;ILandroid/content/Context;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "flags"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    :try_start_0
    const-string v3, "input_method"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 81
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 83
    .local v2, "windowToken":Landroid/os/IBinder;
    invoke-virtual {v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "windowToken":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
