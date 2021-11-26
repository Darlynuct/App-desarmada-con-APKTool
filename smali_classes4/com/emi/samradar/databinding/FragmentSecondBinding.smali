.class public final Lcom/emi/samradar/databinding/FragmentSecondBinding;
.super Ljava/lang/Object;
.source "FragmentSecondBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonSecond:Landroid/widget/Button;

.field public final centerImage:Landroid/widget/ImageView;

.field public final content:Lcom/skyfishjy/library/RippleBackground;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textviewSecond:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Lcom/skyfishjy/library/RippleBackground;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "buttonSecond"    # Landroid/widget/Button;
    .param p3, "centerImage"    # Landroid/widget/ImageView;
    .param p4, "content"    # Lcom/skyfishjy/library/RippleBackground;
    .param p5, "textviewSecond"    # Landroid/widget/TextView;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/emi/samradar/databinding/FragmentSecondBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    iput-object p2, p0, Lcom/emi/samradar/databinding/FragmentSecondBinding;->buttonSecond:Landroid/widget/Button;

    .line 42
    iput-object p3, p0, Lcom/emi/samradar/databinding/FragmentSecondBinding;->centerImage:Landroid/widget/ImageView;

    .line 43
    iput-object p4, p0, Lcom/emi/samradar/databinding/FragmentSecondBinding;->content:Lcom/skyfishjy/library/RippleBackground;

    .line 44
    iput-object p5, p0, Lcom/emi/samradar/databinding/FragmentSecondBinding;->textviewSecond:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/emi/samradar/databinding/FragmentSecondBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 74
    const v0, 0x7f08005e

    .line 75
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 76
    .local v1, "buttonSecond":Landroid/widget/Button;
    if-eqz v1, :cond_3

    .line 80
    const v0, 0x7f080062

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 82
    .local v8, "centerImage":Landroid/widget/ImageView;
    if-eqz v8, :cond_2

    .line 86
    const v0, 0x7f080077

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/skyfishjy/library/RippleBackground;

    .line 88
    .local v9, "content":Lcom/skyfishjy/library/RippleBackground;
    if-eqz v9, :cond_1

    .line 92
    const v0, 0x7f08018f

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 94
    .local v10, "textviewSecond":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 98
    new-instance v11, Lcom/emi/samradar/databinding/FragmentSecondBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/emi/samradar/databinding/FragmentSecondBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Lcom/skyfishjy/library/RippleBackground;Landroid/widget/TextView;)V

    return-object v11

    .line 95
    :cond_0
    goto :goto_0

    .line 89
    .end local v10    # "textviewSecond":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 83
    .end local v9    # "content":Lcom/skyfishjy/library/RippleBackground;
    :cond_2
    goto :goto_0

    .line 77
    .end local v8    # "centerImage":Landroid/widget/ImageView;
    :cond_3
    nop

    .line 101
    .end local v1    # "buttonSecond":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/emi/samradar/databinding/FragmentSecondBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/emi/samradar/databinding/FragmentSecondBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/emi/samradar/databinding/FragmentSecondBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/emi/samradar/databinding/FragmentSecondBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 61
    const v0, 0x7f0b002f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {v0}, Lcom/emi/samradar/databinding/FragmentSecondBinding;->bind(Landroid/view/View;)Lcom/emi/samradar/databinding/FragmentSecondBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/emi/samradar/databinding/FragmentSecondBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/emi/samradar/databinding/FragmentSecondBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
