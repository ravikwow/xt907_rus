.class final Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;
.super Ljava/lang/Object;
.source "SocialWidgetProvider.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/socialwidget/SocialWidgetProvider;->loadWidgetData(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$widgetId:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;->val$widgetId:I

    iput-object p3, p0, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 3
    .param p2, "contactData"    # Lcom/android/contacts/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;",
            "Lcom/android/contacts/model/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    iget-object v0, p0, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;->val$widgetId:I

    iget-object v2, p0, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    # invokes: Lcom/android/contacts/socialwidget/SocialWidgetProvider;->bindRemoteViews(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/model/Contact;)V
    invoke-static {v0, v1, v2, p2}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->access$000(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/model/Contact;)V

    .line 128
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p2, Lcom/android/contacts/model/Contact;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;->onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method
